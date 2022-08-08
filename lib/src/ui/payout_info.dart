import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class PayoutInfo extends StatefulWidget {
  const PayoutInfo({Key? key}) : super(key: key);

  @override
  State<PayoutInfo> createState() => _PayoutInfoState();
}

class _PayoutInfoState extends State<PayoutInfo> {

  bool isChecked = false;


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
                  width: 120,
                ),
                const Text(
                  Strings.kPayout,
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0, top: 20, bottom: 5),
                child: Text(
                  Strings.kBankAccNo,
                  style: TextStyle(
                      color: AppColors.kBlack.withOpacity(.8),
                      fontFamily: 'Baloo2Regular',
                      fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                ),
                child: Text(
                  '12120392104912049102490',
                  style: TextStyle(
                      color: AppColors.kBlack.withOpacity(.3),
                      fontFamily: 'Baloo2Medium',
                      fontSize: 14),
                ),
              ),
              Divider(
                color: AppColors.kDividerGrey, //color of divider
                height: 10, //height spacing of divider
                thickness: 1, //thickness of divier line
                indent: 25, //spacing at the start of divider
                //endIndent: 25, //spacing at the end of divider
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0, top: 25),
                child: Text(
                  Strings.kChooseYourAmt,
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
                        Text('1000 ${Strings.krsd}',
                            style: TextStyle(
                                color: AppColors.kBlack.withOpacity(.7),
                                fontFamily: 'Baloo2Regular',
                                fontSize: 16)),
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
                            Text('1000 ${Strings.krsd}',
                                style: TextStyle(
                                    color: AppColors.kBlack.withOpacity(.2),
                                    fontFamily: 'Baloo2Regular',
                                    fontSize: 16)),
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
              SizedBox(
                height: 15,
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
                            Text('1000 ${Strings.krsd}',
                                style: TextStyle(
                                    color: AppColors.kBlack.withOpacity(.2),
                                    fontFamily: 'Baloo2Regular',
                                    fontSize: 16)),
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
                    SizedBox(
                      width: 60,
                    ),
                    Container(
                        height: 55,
                        width: 135,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('1000 ${Strings.krsd}',
                                style: TextStyle(
                                    color: AppColors.kBlack.withOpacity(.2),
                                    fontFamily: 'Baloo2Regular',
                                    fontSize: 16)),
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
              SizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 55,
                      width: 135,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('1000 ${Strings.krsd}',
                              style: TextStyle(
                                  color: AppColors.kBlack.withOpacity(.2),
                                  fontFamily: 'Baloo2Regular',
                                  fontSize: 16)),
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
              Divider(
                color: AppColors.kDividerGrey, //color of divider
                height: 30, //height spacing of divider
                thickness: 1, //thickness of divier line
                indent: 25, //spacing at the start of divider
                //endIndent: 25, //spacing at the end of divider
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0,top: 5),
                child: Text(
                  Strings.kChooseDiffAmt,
                  style: TextStyle(
                      color: AppColors.kBlack,
                      fontFamily: 'Baloo2Medium',
                      fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0,right: 32,top: 5),
                child: TextFormField(
                  style: AppCommon.fieldTextStyle(),
                  decoration: AppCommon.textFiledDecoration(hintText: Strings.kEnterAmt),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      Strings.kMinRsd,
                      style: TextStyle(
                          color: AppColors.kBlack.withOpacity(.2),
                          fontFamily: 'Baloo2Regular',
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 160,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0, right: 35),
                child: SwipeButton(
                  borderRadius: BorderRadius.circular(8),
                  activeTrackColor: AppColors.kOrange,
                  height: 50,
                  thumb: Container(
                    color: AppColors.kOrange,
                  ),
                  child: Text(Strings.kSwipeToPayout,
                      style: const TextStyle(
                          fontFamily: 'Baloo2SemiBold',
                          fontSize: 16,
                          color: AppColors.kWhite)),
                  onSwipe: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Swipped"),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                ),
              ),
              Center(
                child: Text(
                  Strings.kYouReciPayment,
                  style: TextStyle(
                      color: AppColors.kBlack.withOpacity(.3),
                      fontFamily: 'Baloo2Regular',
                      fontSize: 12),
                ),
              ),
            ],
          ),
        ));
  }
}
