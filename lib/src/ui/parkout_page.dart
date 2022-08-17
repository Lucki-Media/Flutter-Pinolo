import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
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
  String selected = "";
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "Volkswagen Passat",
    },
    {
      "id": 1,
      "value": true,
      "title": "Mercedes - Benz E350d",
    },
    {
      "id": 2,
      "value": false,
      "title": "Zastava 101",
    },
    {
      "id": 3,
      "value": false,
      "title": "Lamborghini Huracan",
    },
  ];
  String selectedTime = "";
  List checkListItemsTime = [
    {
      "id": 0,
      "value": false,
      "title": "2 min",
    },
    {
      "id": 1,
      "value": true,
      "title": "5 min",
    },
    {
      "id": 2,
      "value": false,
      "title": "10 min",
    },
  ];
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, top: 20),
                  child: Text(
                    Strings.kVehicle,
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
                            horizontal: 23, vertical: 15),
                        child: Container(
                            height: 55,
                            width: 150,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 22.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 71,
                                    child: Text(
                                      checkListItems[index]["title"],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: checkListItems[index]["value"]
                                              ? AppColors.kBlack.withOpacity(.7)
                                              : AppColors.kBlack.withOpacity(.2),
                                          fontFamily: 'Baloo2Regular',
                                          fontSize: 12),
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
                Divider(
                  color: AppColors.kDividerGrey, //color of divider
                  height: 10, //height spacing of divider
                  thickness: 1, //thickness of divier line
                  indent: 25, //spacing at the start of divider
                  //endIndent: 25, //spacing at the end of divider
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 35.0,
                  ),
                  child: Text(
                    Strings.kParkingType,
                    style: TextStyle(
                        color: AppColors.kBlack,
                        fontFamily: 'Baloo2Medium',
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                  child: Row(
                    children: [
                      Container(
                          height: 55,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/90deg_dark.png',
                            ),
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
                        width: 50,
                      ),
                      Container(
                          height: 55,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/images/45deg_light.png',
                            ),
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
                  height: 25,
                ),
                Center(
                  child: Container(
                      height: 55,
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(
                          'assets/images/parallel_light.png',
                        ),
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
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  color: AppColors.kDividerGrey, //color of divider
                  height: 20, //height spacing of divider
                  thickness: 1, //thickness of divier line
                  indent: 25, //spacing at the start of divider
                  //endIndent: 25, //spacing at the end of divider
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 35.0,
                  ),
                  child: Text(
                    Strings.kTime,
                    style: TextStyle(
                        color: AppColors.kBlack,
                        fontFamily: 'Baloo2Medium',
                        fontSize: 18),
                  ),
                ),
                Center(
                  child: Wrap(
                    children: List.generate(
                      checkListItemsTime.length,
                          (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 23, vertical: 15),
                        child: Container(
                            height: 55,
                            width: 150,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 22.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 71,
                                    child: Text(
                                      checkListItemsTime[index]["title"],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: checkListItemsTime[index]["value"]
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
                                    isChecked: checkListItemsTime[index]["value"],
                                    onTap: (value) {
                                      setState(() {
                                        for (var element in checkListItemsTime) {
                                          element["value"] = false;
                                        }
                                        checkListItemsTime[index]["value"] = value;
                                        selectedTime =
                                        "${checkListItemsTime[index]["id"]}, ${checkListItemsTime[index]["title"]}, ${checkListItemsTime[index]["value"]}";
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            decoration: checkListItemsTime[index]["value"]
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
                Divider(
                  color: AppColors.kDividerGrey, //color of divider
                  height: 10, //height spacing of divider
                  thickness: 1, //thickness of divier line
                  indent: 25, //spacing at the start of divider
                  //endIndent: 25, //spacing at the end of divider
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 35.0,
                  ),
                  child: Text(
                    Strings.kNote,
                    style: TextStyle(
                        color: AppColors.kBlack,
                        fontFamily: 'Baloo2Medium',
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.kBlack,
                      fontFamily: 'Baloo2Regular',
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 25),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.kBlue, width: 1.0),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.kBlack.withOpacity(0.2),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'This parking spot is for small vehicle.',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: AppColors.kBlack.withOpacity(.2),
                        fontFamily: 'Baloo2Regular',
                      ),
                      //labelText: ,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
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
                    child: Text(Strings.kSwipeToParkOut,
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
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          // Positioned(
          //   bottom: 35,
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 35,right: 35.0),
          //     child: ElevatedButton(
          //       onPressed: (){
          //       },
          //       style: ElevatedButton.styleFrom(
          //         padding:
          //         EdgeInsets.symmetric(vertical: 10, horizontal: 100),
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(10.0)),
          //         textStyle: const TextStyle(
          //             fontFamily: 'Baloo2SemiBold',
          //             fontSize: 16,
          //             color: AppColors.kWhite),
          //         primary: AppColors.kOrange,
          //       ),
          //       //icon: Icon(Icons.add, size: 18),
          //       child:  Text(Strings.kSwipeToParkOut),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
