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
  String selected = "";
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "1000 rsd",
    },
    {
      "id": 1,
      "value": true,
      "title": "2000 rsd",
    },
    {
      "id": 2,
      "value": false,
      "title": "5000 rsd",
    },
    {
      "id": 3,
      "value": false,
      "title": "10000 rsd",
    },
    {
      "id": 4,
      "value": false,
      "title": "20000 rsd",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          child:const Text(
                            Strings.kPayout,
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
              Center(
                child: Wrap(
                  children: List.generate(
                    checkListItems.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      child: Container(
                          height: 55,
                          width: 135,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 71,
                                  child: Text(
                                    checkListItems[index]["title"],
                                    style: TextStyle(
                                        color: checkListItems[index]["value"]
                                            ? AppColors.kBlack.withOpacity(.7)
                                            : AppColors.kBlack.withOpacity(.2),
                                        fontFamily: 'Baloo2Regular',
                                        fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                RoundCheckBox(
                                  size: 32,
                                  checkedColor: AppColors.kDarkOrange,
                                  borderColor: AppColors.kBlack.withOpacity(.2),
                                  isChecked: checkListItems[index]["value"],
                                  onTap: (value) {
                                    setState(() {
                                      for (var element in checkListItems) {
                                        element["value"] = false;
                                      }
                                      checkListItems[index]["value"] = value;
                                      selected =
                                          "${checkListItems[index]["id"]}, ${checkListItems[index]["title"]}, ${checkListItems[index]["value"]}";
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          decoration: checkListItems[index]["value"]
                              ? BoxDecoration(
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
                                )
                              : BoxDecoration(
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
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
              //   child: Row(
              //     children: [
              //       Container(
              //           height: 55,
              //           width: 135,
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               Text('1000 ${Strings.krsd}',
              //                   style: TextStyle(
              //                       color: AppColors.kBlack.withOpacity(.7),
              //                       fontFamily: 'Baloo2Regular',
              //                       fontSize: 16)),
              //               SizedBox(
              //                 width: 15,
              //               ),
              //               Transform.scale(
              //                 scale: 2,
              //                 child: Checkbox(
              //                   activeColor: AppColors
              //                       .kDarkOrange, //The color to use when this checkbox is checked.
              //                   checkColor: AppColors.kWhite,
              //                   shape: CircleBorder(
              //                     side: new BorderSide(color: Colors.orange),
              //                   ),
              //                   value: isChecked,
              //                   onChanged: (v) {
              //                     setState(() {
              //                       isChecked = v!;
              //                     });
              //                   },
              //                 ),
              //               ),
              //             ],
              //           ),
              //           decoration: BoxDecoration(
              //             color: Colors.white,
              //             border: Border.all(
              //               color: AppColors.kBlack.withOpacity(.5),
              //               width: 1,
              //             ),
              //             borderRadius: BorderRadius.circular(30),
              //             boxShadow: [
              //               BoxShadow(
              //                 color: AppColors.kBlack.withOpacity(.25),
              //                 blurRadius: 3.0, // soften the shadow
              //                 spreadRadius: 1.0, //extend the shadow
              //                 offset: Offset(
              //                   2.0,
              //                   4.0,
              //                 ),
              //               )
              //             ],
              //           )),
              //       SizedBox(
              //         width: 60,
              //       ),
              //       Container(
              //           height: 55,
              //           width: 135,
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               Text('2000 ${Strings.krsd}',
              //                   style: TextStyle(
              //                       color: AppColors.kBlack.withOpacity(.2),
              //                       fontFamily: 'Baloo2Regular',
              //                       fontSize: 16)),
              //               SizedBox(
              //                 width: 15,
              //               ),
              //               Transform.scale(
              //                 scale: 2,
              //                 child: Checkbox(
              //                   activeColor: AppColors
              //                       .kDarkOrange, //The color to use when this checkbox is checked.
              //                   checkColor: AppColors.kWhite,
              //                   shape: RoundedRectangleBorder(
              //                       side: new BorderSide(
              //                           width: 1,
              //                           color:
              //                               AppColors.kBlack.withOpacity(.2)),
              //                       borderRadius: BorderRadius.all(
              //                           Radius.circular(30.0))),
              //                   value: isChecked,
              //                   onChanged: (v) {
              //                     setState(() {
              //                       isChecked = v!;
              //                     });
              //                   },
              //                 ),
              //               ),
              //             ],
              //           ),
              //           decoration: BoxDecoration(
              //             color: Colors.white,
              //             border: Border.all(
              //               color: AppColors.kBlack.withOpacity(.2),
              //               width: 1,
              //             ),
              //             borderRadius: BorderRadius.circular(30),
              //             // boxShadow: [
              //             //   BoxShadow(
              //             //     color: AppColors.kBlack.withOpacity(.25),
              //             //     blurRadius: 3.0, // soften the shadow
              //             //     spreadRadius: 1.0, //extend the shadow
              //             //     offset: Offset(
              //             //       2.0,
              //             //       4.0,
              //             //     ),
              //             //   )
              //             // ],
              //           )),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
              //   child: Row(
              //     children: [
              //       Container(
              //           height: 55,
              //           width: 135,
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               Text('5000 ${Strings.krsd}',
              //                   style: TextStyle(
              //                       color: AppColors.kBlack.withOpacity(.2),
              //                       fontFamily: 'Baloo2Regular',
              //                       fontSize: 16)),
              //               SizedBox(
              //                 width: 15,
              //               ),
              //               RoundCheckBox(
              //                 onTap: (selected) {},
              //                 size: 35,
              //                 checkedColor: AppColors.kDarkOrange,
              //                 borderColor: AppColors.kBlack.withOpacity(.2),
              //                 isChecked: isChecked,
              //               ),
              //             ],
              //           ),
              //           decoration: BoxDecoration(
              //             color: Colors.white,
              //             border: Border.all(
              //               color: AppColors.kBlack.withOpacity(.2),
              //               width: 1,
              //             ),
              //             borderRadius: BorderRadius.circular(30),
              //             // boxShadow: [
              //             //   BoxShadow(
              //             //     color: AppColors.kBlack.withOpacity(.25),
              //             //     blurRadius: 3.0, // soften the shadow
              //             //     spreadRadius: 1.0, //extend the shadow
              //             //     offset: Offset(
              //             //       2.0,
              //             //       4.0,
              //             //     ),
              //             //   )
              //             // ],
              //           )),
              //       SizedBox(
              //         width: 60,
              //       ),
              //       Container(
              //           height: 55,
              //           width: 135,
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               Text('10000 ${Strings.krsd}',
              //                   style: TextStyle(
              //                       color: AppColors.kBlack.withOpacity(.2),
              //                       fontFamily: 'Baloo2Regular',
              //                       fontSize: 16)),
              //               SizedBox(
              //                 width: 15,
              //               ),
              //               RoundCheckBox(
              //                 onTap: (selected) {},
              //                 size: 35,
              //                 checkedColor: AppColors.kDarkOrange,
              //                 borderColor: AppColors.kBlack.withOpacity(.2),
              //                 isChecked: isChecked,
              //               ),
              //             ],
              //           ),
              //           decoration: BoxDecoration(
              //             color: Colors.white,
              //             border: Border.all(
              //               color: AppColors.kBlack.withOpacity(.2),
              //               width: 1,
              //             ),
              //             borderRadius: BorderRadius.circular(30),
              //             // boxShadow: [
              //             //   BoxShadow(
              //             //     color: AppColors.kBlack.withOpacity(.25),
              //             //     blurRadius: 3.0, // soften the shadow
              //             //     spreadRadius: 1.0, //extend the shadow
              //             //     offset: Offset(
              //             //       2.0,
              //             //       4.0,
              //             //     ),
              //             //   )
              //             // ],
              //           )),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 23,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //         height: 55,
              //         width: 135,
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Text('20000 ${Strings.krsd}',
              //                 style: TextStyle(
              //                     color: AppColors.kBlack.withOpacity(.2),
              //                     fontFamily: 'Baloo2Regular',
              //                     fontSize: 16)),
              //             SizedBox(
              //               width: 15,
              //             ),
              //             RoundCheckBox(
              //               onTap: (selected) {},
              //               size: 35,
              //               checkedColor: AppColors.kDarkOrange,
              //               borderColor: AppColors.kBlack.withOpacity(.2),
              //               isChecked: isChecked,
              //             ),
              //           ],
              //         ),
              //         decoration: BoxDecoration(
              //           color: Colors.white,
              //           border: Border.all(
              //             color: AppColors.kBlack.withOpacity(.2),
              //             width: 1,
              //           ),
              //           borderRadius: BorderRadius.circular(30),
              //           // boxShadow: [
              //           //   BoxShadow(
              //           //     color: AppColors.kBlack.withOpacity(.25),
              //           //     blurRadius: 3.0, // soften the shadow
              //           //     spreadRadius: 1.0, //extend the shadow
              //           //     offset: Offset(
              //           //       2.0,
              //           //       4.0,
              //           //     ),
              //           //   )
              //           // ],
              //         )),
              //   ],
              // ),
              Divider(
                color: AppColors.kDividerGrey, //color of divider
                height: 2, //height spacing of divider
                thickness: 1, //thickness of divier line
                indent: 25, //spacing at the start of divider
                //endIndent: 25, //spacing at the end of divider
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0, top: 20),
                child: Text(
                  Strings.kChooseDiffAmt,
                  style: TextStyle(
                      color: AppColors.kBlack,
                      fontFamily: 'Baloo2Medium',
                      fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 32, top: 5),
                child: TextFormField(
                  style: AppCommon.fieldTextStyle(),
                  decoration: AppCommon.textFiledDecoration(
                      hintText: Strings.kEnterAmt),
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
