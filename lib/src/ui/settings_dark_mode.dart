import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';

class SettingsDarkMode extends StatefulWidget {
  const SettingsDarkMode({Key? key}) : super(key: key);

  @override
  State<SettingsDarkMode> createState() => _SettingsDarkModeState();
}

class _SettingsDarkModeState extends State<SettingsDarkMode> {
  bool isOnDarkMode = false;

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
                width: 100,
              ),
              const Text(
                Strings.kDarkMode,
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
            Column(
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
                          Strings.kDarkModeOnOff,
                          style: TextStyle(
                              color: AppColors.kBlack,
                              fontFamily: 'Baloo2Regular',
                              fontSize: 16),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 50,
                        child: Transform.scale(
                          scale: 1.2,
                          child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            onChanged: (bool value){
                                setState(() {
                                  isOnDarkMode = value;
                                });
                              },
                            value: isOnDarkMode,
                            activeColor: AppColors.kBlue,
                            activeTrackColor: AppColors.kOrange,
                            inactiveThumbColor: AppColors.kToggleLGrey,
                            inactiveTrackColor:AppColors.kToggleDGrey ,
                          ),
                        ),
                      ),
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
          ]
      ),
    );
  }

}
