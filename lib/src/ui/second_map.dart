import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';
class SecondMap extends StatefulWidget {
  const SecondMap({Key? key}) : super(key: key);

  @override
  State<SecondMap> createState() => _SecondMapState();
}

class _SecondMapState extends State<SecondMap> {

  @override
  void initState() {
    super.initState();
    _modalBottomSheet2();
  }

  void _modalBottomSheet() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
          ),
          context: context,
          builder: (builder) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.user,
                                color: AppColors.kAppBlack.withOpacity(.5),
                                size: 18,
                              ),
                              Text(
                                'Veljko A',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: AppColors.kAppBlack.withOpacity(.5),
                                  fontFamily: 'Baloo2Regular',
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 10,
                            width: 55,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) => Padding(
                                padding: const EdgeInsets.only(right: 3.0),
                                child: Icon(
                                  FontAwesomeIcons.solidStar,
                                  color: Colors.amber,
                                  size: 8,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          //Navigator.of(context).pop();
                        },
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: AppColors.kBlue,
                          child: Icon(
                            FontAwesomeIcons.comment,
                            color: AppColors.kWhite,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1.0,
                  decoration: BoxDecoration(
                    color: AppColors.kToggleDGrey.withOpacity(.3),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.kShadowGrey.withOpacity(.25),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40,top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'BG - 295 - XE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.kAppBlack.withOpacity(.9),
                          fontFamily: 'Baloo2Regular',
                        ),
                      ),
                      Image.asset(
                        'assets/images/parallel_dark.png',
                        width: 90,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,top: 10),
                  child: Text(
                    'Škoda Octavia',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kAppBlack.withOpacity(.9),
                      fontFamily: 'Baloo2Regular',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: AppColors.kBlack,
                            child: Container(),
                          ),
                          SizedBox(width: 8,),
                          Text(
                            'Black',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kAppBlack.withOpacity(.9),
                              fontFamily: 'Baloo2Regular',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/sedan_car.png',
                            width: 70,
                          ),
                          SizedBox(width: 8,),
                          Text(
                            'Sedan',
                            style: TextStyle(
                                color: AppColors.kBlack.withOpacity(.6),
                                fontFamily: 'Baloo2Regular',
                                fontSize: 16),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Center(
                  child: ElevatedButton(
                    onPressed: (){
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      textStyle: const TextStyle(
                          fontFamily: 'Baloo2Regular',
                          fontSize: 14,
                          color: AppColors.kWhite),
                      primary: AppColors.kBlue,
                    ),
                    //icon: Icon(Icons.add, size: 18),
                    child:  Text('${Strings.kIAmHere}!'),
                  ),
                ),
                SizedBox(height: 35,),
              ],
            );
          });
    });
  }
  void _modalBottomSheet2() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
          ),
          context: context,
          builder: (builder) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.user,
                                color: AppColors.kAppBlack.withOpacity(.5),
                                size: 18,
                              ),
                              Text(
                                'Veljko A',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: AppColors.kAppBlack.withOpacity(.5),
                                  fontFamily: 'Baloo2Regular',
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 10,
                            width: 55,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) => Padding(
                                padding: const EdgeInsets.only(right: 3.0),
                                child: Icon(
                                  FontAwesomeIcons.solidStar,
                                  color: Colors.amber,
                                  size: 8,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          //Navigator.of(context).pop();
                        },
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: AppColors.kBlue,
                          child: Icon(
                            FontAwesomeIcons.comment,
                            color: AppColors.kWhite,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1.0,
                  decoration: BoxDecoration(
                    color: AppColors.kToggleDGrey.withOpacity(.3),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.kShadowGrey.withOpacity(.25),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40,top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BG - 295 - XE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.kAppBlack.withOpacity(.9),
                          fontFamily: 'Baloo2Regular',
                        ),
                      ),
                      SizedBox(
                        width: 130,
                        child: Text(
                          '${Strings.kArrivalTime}: 3 min ${Strings.kDistance}: 700 m',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.kAppBlack.withOpacity(.9),
                            fontFamily: 'Baloo2Medium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Škoda Octavia',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kAppBlack.withOpacity(.9),
                      fontFamily: 'Baloo2Regular',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: AppColors.kBlack,
                            child: Container(),
                          ),
                          SizedBox(width: 8,),
                          Text(
                            'Black',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kAppBlack.withOpacity(.9),
                              fontFamily: 'Baloo2Regular',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Sedan',
                            style: TextStyle(
                                color: AppColors.kBlack.withOpacity(.6),
                                fontFamily: 'Baloo2Regular',
                                fontSize: 16),
                          ),
                          SizedBox(width: 8,),
                          Image.asset(
                            'assets/images/sedan_car.png',
                            width: 70,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Center(
                  child: ElevatedButton(
                    onPressed: (){
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      textStyle: const TextStyle(
                          fontFamily: 'Baloo2Regular',
                          fontSize: 14,
                          color: AppColors.kWhite),
                      primary: AppColors.kOrange,
                    ),
                    //icon: Icon(Icons.add, size: 18),
                    child:  Text('${Strings.kISeeHim}!'),
                  ),
                ),
                SizedBox(height: 25,),
              ],
            );
          });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
