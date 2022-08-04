import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
class ParkOutPage extends StatefulWidget {
  const ParkOutPage({Key? key}) : super(key: key);

  @override
  State<ParkOutPage> createState() => _ParkOutPageState();
}

class _ParkOutPageState extends State<ParkOutPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85.0,
        shadowColor: AppColors.kShadowGrey,
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: AppColors.kWhite,
        //foregroundColor: AppColors.kBlue,
        //centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: const Text(
                      Strings.kParkOut,
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.kBlack,
                        fontFamily: 'Baloo2SemiBold',
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
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
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35.0, top: 25),
            child: Text(
              Strings.kVehicle,
              style: TextStyle(
                  color: AppColors.kBlack,
                  fontFamily: 'Baloo2Medium',
                  fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 40),
            child: Row(
              children: [
                Container(
                    height: 55,
                    width: 135,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:70,
                          child: Text('Volkswagen Passat',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.kBlack.withOpacity(.7),
                                  fontFamily: 'Baloo2Regular',
                                  fontSize: 12)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        RoundCheckBox(
                          onTap: (selected) {
                          },
                          size: 35,
                          checkedColor:AppColors.kDarkOrange,
                          isChecked: isChecked,
                        ),

                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: AppColors.kBlack.withOpacity(.5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.kBlack.withOpacity(.25),
                          blurRadius: 3.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(
                            2.0,
                            4.0,
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  width: 60,
                ),
                Container(
                    height: 55,
                    width: 135,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:70,
                          child: Text('Mercedes - Benz E350d',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.kBlack.withOpacity(.2),
                                  fontFamily: 'Baloo2Regular',
                                  fontSize: 12)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        RoundCheckBox(
                          onTap: (selected) {

                          },
                          size: 35,
                          checkedColor:AppColors.kDarkOrange,
                          borderColor: AppColors.kBlack.withOpacity(.2),
                          isChecked: isChecked,
                        ),

                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: AppColors.kBlack.withOpacity(.2),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: AppColors.kBlack.withOpacity(.25),
                      //     blurRadius: 3.0, // soften the shadow
                      //     spreadRadius: 1.0, //extend the shadow
                      //     offset: Offset(
                      //       2.0,
                      //       4.0,
                      //     ),
                      //   )
                      // ],
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 40),
            child: Row(
              children: [
                Container(
                    height: 55,
                    width: 135,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:70,
                          child: Text('Zastava 101',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.kBlack.withOpacity(.7),
                                  fontFamily: 'Baloo2Regular',
                                  fontSize: 12)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        RoundCheckBox(
                          onTap: (selected) {
                          },
                          size: 35,
                          checkedColor:AppColors.kDarkOrange,
                          isChecked: isChecked,
                        ),

                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: AppColors.kBlack.withOpacity(.5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.kBlack.withOpacity(.25),
                          blurRadius: 3.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(
                            2.0,
                            4.0,
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  width: 60,
                ),
                Container(
                    height: 55,
                    width: 135,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:70,
                          child: Text('Lamborghini Huracan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.kBlack.withOpacity(.2),
                                  fontFamily: 'Baloo2Regular',
                                  fontSize: 12)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        RoundCheckBox(
                          onTap: (selected) {

                          },
                          size: 35,
                          checkedColor:AppColors.kDarkOrange,
                          borderColor: AppColors.kBlack.withOpacity(.2),
                          isChecked: isChecked,
                        ),

                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: AppColors.kBlack.withOpacity(.2),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: AppColors.kBlack.withOpacity(.25),
                      //     blurRadius: 3.0, // soften the shadow
                      //     spreadRadius: 1.0, //extend the shadow
                      //     offset: Offset(
                      //       2.0,
                      //       4.0,
                      //     ),
                      //   )
                      // ],
                    )),
              ],
            ),
          ),Divider(
            color: AppColors.kDividerGrey, //color of divider
            height: 20, //height spacing of divider
            thickness: 1, //thickness of divier line
            indent: 25, //spacing at the start of divider
            //endIndent: 25, //spacing at the end of divider
          ),
        ],
      ),
    );
  }
}
