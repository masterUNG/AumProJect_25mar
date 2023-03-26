import 'dart:io';

import 'package:aum_thai_v1/state_web/show_qr_code.dart';
import 'package:aum_thai_v1/states/authen.dart';
import 'package:aum_thai_v1/states/main_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:shared_preferences/shared_preferences.dart';

var getPages = <GetPage<dynamic>>[
  GetPage(
    name: '/web',
    page: () => const ShowQrCode(),
  ),
  GetPage(
    name: '/mobile',
    page: () => const Authen(),
  ),
  GetPage(
    name: '/mainHome',
    page: () => const MainHome(),
  ),
];

String? firstPage;

Future<void> main() async {
  HttpOverrides.global = MyHttpOverride();
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    //web
    firstPage = '/web';
    runApp(MyApp());
  } else {
    //mobile

    SharedPreferences preferences = await SharedPreferences.getInstance();
    var result = preferences.getStringList('datas');
    print('## result ==> $result');

    if (result == null) {
      firstPage = '/mobile';
      runApp(MyApp());
    } else {
      firstPage = '/mainHome';
      runApp(MyApp());
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: getPages,
      initialRoute: firstPage,
      theme: ThemeData(
        useMaterial3: true,
        // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey),
      ),
    );
  }
}

class MyHttpOverride extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (cert, host, port) => true;
  }
}
