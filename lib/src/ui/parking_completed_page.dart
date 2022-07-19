import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/ui/report_user_page.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class ParkingCompletedPage extends StatefulWidget {
  const ParkingCompletedPage({Key? key}) : super(key: key);

  @override
  State<ParkingCompletedPage> createState() => _ParkingCompletedPageState();
}

class _ParkingCompletedPageState extends State<ParkingCompletedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 130,
                ),
                Image.asset(
                  'assets/images/welcome_logo.png',
                  height: 300,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${Strings.kSubtotal}:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.5),
                              fontFamily: 'Baloo2Regular',
                            ),
                          ),
                          Text(
                            '1000, 00 ${Strings.krsd}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.7),
                              fontFamily: 'Baloo2Medium',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Visa',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.kBlack.withOpacity(.5),
                                  fontFamily: 'Baloo2Regular',
                                ),
                              ),
                              Text(
                                '**** **** **** 4255. ${Strings.kExpires}: 04/24',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.kBlack.withOpacity(.5),
                                  fontFamily: 'Baloo2Regular',
                                ),
                              ),
                            ],
                          ),
                          Text(
                            ' 700, 00 ${Strings.krsd}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.7),
                              fontFamily: 'Baloo2Medium',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${Strings.kPaidByBalance}:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.5),
                              fontFamily: 'Baloo2Regular',
                            ),
                          ),
                          Text(
                            '300, 00 ${Strings.krsd}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.7),
                              fontFamily: 'Baloo2Medium',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${Strings.kDiscount}(7%):',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.5),
                              fontFamily: 'Baloo2Regular',
                            ),
                          ),
                          Text(
                            '-21,00 ${Strings.krsd}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.7),
                              fontFamily: 'Baloo2Medium',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${Strings.kPDV}(20%):',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.5),
                              fontFamily: 'Baloo2Regular',
                            ),
                          ),
                          Text(
                            '195, 80 ${Strings.krsd}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.7),
                              fontFamily: 'Baloo2Medium',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                '${Strings.kForTrees}(2%):',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.kBlack.withOpacity(.5),
                                  fontFamily: 'Baloo2Regular',
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset('assets/images/tree_nature.png',height: 17,),
                            ],
                          ),
                          Text(
                            '20, 00 ${Strings.krsd}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.7),
                              fontFamily: 'Baloo2Medium',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${Strings.kTotal}:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.5),
                              fontFamily: 'Baloo2Regular',
                            ),
                          ),
                          Text(
                            '979, 00 ${Strings.krsd}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.7),
                              fontFamily: 'Baloo2Medium',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: 45,
                    width: 260,
                    child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('${Strings.kEveryTrans}!',
                                style: TextStyle(
                                    color: AppColors.kWhite,
                                    fontFamily: 'Baloo2Medium',
                                    fontSize: 14)),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('assets/images/tree_nature.png',height: 41,),
                          ],
                        )),
                    decoration: BoxDecoration(
                      color: AppColors.kGreen.withOpacity(.8),
                      borderRadius: BorderRadius.circular(10),
                      // radius of 10
                    )),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: (){
                    showDialog(
                      context: context,
                      barrierColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return Dialog(
                           // contentPadding:const EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30.0))),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                Strings.kRateAuctioneer,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: AppColors.kBlack,
                                  fontFamily: 'Baloo2Medium',
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  FontAwesomeIcons.solidStar,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Divider(
                                color: AppColors.kBlack.withOpacity(.2), //color of divider
                                height: 20, //height spacing of divider
                                thickness: 1, //thickness of divier line
                               // indent: 25, //spacing at the start of divider
                                //endIndent: 25, //spacing at the end of divider
                              ),
                              Text(
                                Strings.kTellUsMore,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.kBlack,
                                  fontFamily: 'Baloo2Regular',
                                ),
                              ),
                              Divider(
                                color: AppColors.kBlack.withOpacity(.2), //color of divider
                                height: 20, //height spacing of divider
                                thickness: 1, //thickness of divier line
                               // indent: 25, //spacing at the start of divider
                                //endIndent: 25, //spacing at the end of divider
                              ),
                              Text(
                                Strings.kLater,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.kBlack,
                                  fontFamily: 'Baloo2Regular',
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    Strings.kRateAuctioneer,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.kBlack.withOpacity(.9),
                      fontFamily: 'Baloo2Regular',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                AppCommon.appButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  ReportUserPage()),
                      );
                    },
                    btnText: '${Strings.kAwsm}!',
                    btnColor: AppColors.kBlue,
                    horizontal: 133),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Container(
            height: 130,
          width: MediaQuery.of(context).size.width,
          color:Colors. grey[50],
            child: Center(
              child: const Text(
                '${Strings.kParkingComplt}!',
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.kBlack,
                  fontFamily: 'Baloo2SemiBold',
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
