import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';

class SettingsFaceTouchId extends StatefulWidget {
  const SettingsFaceTouchId({Key? key}) : super(key: key);

  @override
  State<SettingsFaceTouchId> createState() => _SettingsFaceTouchIdState();
}

class _SettingsFaceTouchIdState extends State<SettingsFaceTouchId> {
  bool isOnForLogin = false;
  bool isOnForPayments = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            SafeArea(
              minimum:const EdgeInsets.only(top: 35.0,bottom: 12),
              top: false,
              bottom: false,
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: const Text(
                          Strings.kFaceTouchID,
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.kBlack,
                            fontFamily: 'Baloo2SemiBold',
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: IconButton(
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
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AppCommon.divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    Strings.kActiveFaceTouchID,
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.kBlack,
                      fontFamily: 'Baloo2Medium',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 15, right: 22, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          Strings.kForLogIn,
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
                                  isOnForLogin = value;
                                });
                            },
                            value: isOnForLogin,
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
                          Strings.kForPayments,
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
                                  isOnForPayments = value;
                                });
                            },
                            value: isOnForPayments,
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
