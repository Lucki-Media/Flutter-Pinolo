import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/ui/settings_dark_mode.dart';
import 'package:pinolo/src/ui/settings_face_touch_id.dart';
import 'package:pinolo/src/ui/settings_notifications.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        shadowColor: AppColors.kShadowGrey,
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: AppColors.kWhite,
        //foregroundColor: AppColors.kBlue,
        //centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: CircleAvatar(
                  backgroundColor: AppColors.kGrey,
                  child: Icon(
                    FontAwesomeIcons.arrowLeft,
                    color: AppColors.kBlack,
                    size: 18,
                  ),
                ),
              ),
              SizedBox(
                width: 110,
              ),
              const Text(
                Strings.kSettings,
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.kBlack,
                  fontFamily: 'Baloo2SemiBold',
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsNotifications()),
                      );
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 25, right: 22, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  Strings.kNotifications,
                                  style: TextStyle(
                                      color: AppColors.kBlack,
                                      fontFamily: 'Baloo2Regular',
                                      fontSize: 16),
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SettingsNotifications()),
                                    );
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.chevronRight,
                                    size: 22,
                                    color: AppColors.kShadowGrey,
                                  )),
                            ],
                          ),
                        ),
                        Divider(
                          color: AppColors.kDividerGrey, //color of divider
                          height: 20, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          indent: 25, //spacing at the start of divider
                          //endIndent: 25, //spacing at the end of divider
                        )
                      ],
                    ),
                  ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SettingsFaceTouchId()),
              );
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 25, right: 22, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          Strings.kFaceTouchID,
                          style: TextStyle(
                              color: AppColors.kBlack,
                              fontFamily: 'Baloo2Regular',
                              fontSize: 16),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SettingsFaceTouchId()),
                            );
                          },
                          child: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 22,
                            color: AppColors.kShadowGrey,
                          )),
                    ],
                  ),
                ),
                Divider(
                  color: AppColors.kDividerGrey, //color of divider
                  height: 20, //height spacing of divider
                  thickness: 1, //thickness of divier line
                  indent: 25, //spacing at the start of divider
                  //endIndent: 25, //spacing at the end of divider
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SettingsDarkMode()),
              );
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 25, right: 22, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          Strings.kDarkMode,
                          style: TextStyle(
                              color: AppColors.kBlack,
                              fontFamily: 'Baloo2Regular',
                              fontSize: 16),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SettingsDarkMode()),
                            );
                          },
                          child: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 22,
                            color: AppColors.kShadowGrey,
                          )),
                    ],
                  ),
                ),
                Divider(
                  color: AppColors.kDividerGrey, //color of divider
                  height: 20, //height spacing of divider
                  thickness: 1, //thickness of divier line
                  indent: 25, //spacing at the start of divider
                  //endIndent: 25, //spacing at the end of divider
                )
              ],
            ),
          ),
  ]
    ),
    );
  }

}
