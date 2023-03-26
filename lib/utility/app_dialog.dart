// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:aum_thai_v1/utility/my_texts.dart';
import 'package:aum_thai_v1/widgets/widget_image.dart';
import 'package:aum_thai_v1/widgets/widget_text.dart';
import 'package:aum_thai_v1/widgets/widget_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDialog {
  final BuildContext context;
  AppDialog({
    required this.context,
  });

  void normalDialog(
      {required String title, Widget? contentWidget, Widget? actionWidget}) {
    Get.dialog(
      AlertDialog(
        icon: const WidgetImage(
          size: 100,
        ),
        title: WidgetText(
          data: title,
          textStyle: MyTexts().Text20_B(),
        ),
        content: contentWidget,
        actions: [
          actionWidget ??
              WidgetTextButton(
                label: 'OK',
                pressFunc: () {
                  Get.back();
                },
              )
        ],
      ),
      barrierDismissible: false,
    );
  }
}
