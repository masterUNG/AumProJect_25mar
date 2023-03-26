import 'dart:io';
import 'dart:math';

import 'package:aum_thai_v1/utility/app_controller.dart';
import 'package:aum_thai_v1/utility/app_dialog.dart';
import 'package:aum_thai_v1/utility/my_constant.dart';
import 'package:aum_thai_v1/widgets/widget_text.dart';
import 'package:aum_thai_v1/widgets/widget_text_button.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AppService {
  AppController appController = Get.put(AppController());

  double calculateDistance(double lat1, double lng1, double lat2, double lng2) {
    double distance = 0;

    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lng2 - lng1) * p)) / 2;
    distance = 12742 * asin(sqrt(a)) * 1000;

    return distance;
  }

  Set<Marker> createMarkerSet() {
    return <Marker>[
      Marker(
        markerId: MarkerId('user'),
        position: LatLng(
          appController.positions.last.latitude,
          appController.positions.last.longitude,
        ),
      ),
      Marker(
        markerId: MarkerId('office'),
        position: MyConstant.officerLatLng,
        icon: BitmapDescriptor.defaultMarkerWithHue(120),
      ),
    ].toSet();
  }

  Future<void> findPosition({required BuildContext context}) async {
    bool locationService = await Geolocator.isLocationServiceEnabled();
    LocationPermission permission;

    if (locationService) {
      // Open Location

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.deniedForever) {
        notShartDialog(context);
      } else {
        if (permission == LocationPermission.denied) {
          permission = await Geolocator.requestPermission();
          if ((permission != LocationPermission.always) &&
              (permission != LocationPermission.whileInUse)) {
            notShartDialog(context);
          } else {
            //find Position
            await Geolocator.getCurrentPosition().then((value) {
              appController.positions.add(value);
            });
          }
        } else {
          //find Position
          await Geolocator.getCurrentPosition().then((value) {
            appController.positions.add(value);
          });
        }
      }
    } else {
      // Off Location
      AppDialog(context: context).normalDialog(
        title: 'Service Location ปิดอยู่ ?',
        contentWidget: const WidgetText(
            data: 'ในการใช้แอพ จะมีการขอพิกัด คุณต้องเปิด พิกัด'),
        actionWidget: WidgetTextButton(
          label: 'เปิดพิกัด',
          pressFunc: () {
            Geolocator.openLocationSettings();
            exit(0);
          },
        ),
      );
    }
  }

  void notShartDialog(BuildContext context) {
    AppDialog(context: context).normalDialog(
      title: 'ไม่อนุญาติแชร์พิกัด',
      contentWidget:
          const WidgetText(data: 'ในการใช้แอพ ต้องอนุญาติ แชร์พิกัดด้วย'),
      actionWidget: WidgetTextButton(
        label: 'อนุญาติแชร์พิกัด',
        pressFunc: () {
          Geolocator.openAppSettings();
          exit(0);
        },
      ),
    );
  }
}
