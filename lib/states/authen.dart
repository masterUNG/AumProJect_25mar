import 'dart:convert';

import 'package:aum_thai_v1/models/user_model.dart';
import 'package:aum_thai_v1/states/main_home.dart';
import 'package:aum_thai_v1/utility/app_snackbar.dart';
import 'package:aum_thai_v1/utility/my_constant.dart';
import 'package:aum_thai_v1/utility/my_texts.dart';
import 'package:aum_thai_v1/widgets/widget_button.dart';
import 'package:aum_thai_v1/widgets/widget_form.dart';
import 'package:aum_thai_v1/widgets/widget_image.dart';
import 'package:aum_thai_v1/widgets/widget_text.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Authen extends StatefulWidget {
  const Authen({super.key});

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  String? user, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
        child: ListView(
          children: [
            head(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WidgetForm(
                  hint: 'User :',
                  changeFunc: (p0) {
                    user = p0.trim();
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WidgetForm(
                  hint: 'Password :',
                  changeFunc: (p0) {
                    password = p0.trim();
                  },
                  obsecu: true,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  width: 250,
                  child: WidgetButton(
                    label: 'Login',
                    pressFunc: () async {
                      if ((user?.isEmpty ?? true) ||
                          (password?.isEmpty ?? true)) {
                        AppSnackBar(
                                title: 'Have Space ?',
                                message: 'Please Fill Every Blank')
                            .errorSnackBar();
                      } else {
                        String urlApiGetUserWhereUser =
                            'https://www.aumthai.com/api/getUaerwhereUser.php?isAdd=true&user=$user';

                        await Dio().get(urlApiGetUserWhereUser).then((value) {
                          if (value.toString() == 'null') {
                            AppSnackBar(
                                    title: 'User False ?',
                                    message: 'ไม่มี User นี้ใน ฐานข้อมูลของเรา')
                                .errorSnackBar();
                          } else {
                            for (var element in json.decode(value.data)) {
                              UserModel userModel = UserModel.fromMap(element);

                              if (password == userModel.password) {
                                // Success

                                Get.offAll(const MainHome());
                              } else {
                                AppSnackBar(
                                        title: 'Password False ?',
                                        message: 'กรุณาลองใหม่ Password ผิด')
                                    .errorSnackBar();
                              }
                            }
                          }
                        });
                      }
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Row head() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 100),
          width: 250,
          child: Row(
            children: [
              const WidgetImage(
                size: 50,
              ),
              WidgetText(
                data: MyConstant.appName,
                textStyle: MyTexts().Text30_BD(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
