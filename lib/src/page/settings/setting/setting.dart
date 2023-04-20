import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../generated/locales.g.dart';
import 'about/about.dart';
import 'language/language.dart';
import 'privacy/privacy.dart';
import 'setting_controller.dart';
import 'terms/terms_of_service.dart';

class Setting extends StatelessWidget {
  TextStyle textStyle = TextStyle(
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(
        init: SettingController(),
        builder: (controller) {
          return Scaffold(
              backgroundColor: Color.fromRGBO(235, 233, 241, 1),
              appBar: AppBar(
                backgroundColor: Color.fromRGBO(235, 233, 241, 1),
                title: Text(
                  LocaleKeys.appbar_setting.tr,
                  style: textStyle,
                ),
              ),
              body: SafeArea(
                  child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [],
                      ),
                    ),
                    SizedBox(height: 20),
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.language,
                              color: Colors.teal,
                            ),
                            title: Text(LocaleKeys.menu_language.tr),
                            trailing: Icon(Icons.arrow_forward_ios_rounded),
                            onTap: ()=>{Get.to(Language())},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.privacy_tip,
                              color: Colors.pinkAccent,
                            ),
                            title: Text(LocaleKeys.menu_privacy.tr),
                            trailing: Icon(Icons.arrow_forward_ios_rounded),
                            onTap: () => {Get.to(Privacy())},
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(
                              Icons.abc,
                              color: Colors.green,
                            ),
                            title: Text(LocaleKeys.menu_terms.tr),
                            trailing: Icon(Icons.arrow_forward_ios_rounded),
                            onTap: () => {Get.to(TermsOfService())},
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(
                              Icons.adb,
                              color: Colors.teal,
                            ),
                            title: Text(LocaleKeys.menu_about.tr),
                            trailing: Icon(Icons.arrow_forward_ios_rounded),
                            onTap: () => {Get.to(About())},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )));
        });
  }
}
