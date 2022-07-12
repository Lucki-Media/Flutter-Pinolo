import 'package:flutter/material.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';

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
                            '1000, 00 rsd',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.7),
                              fontFamily: 'Baloo2Medium',
                            ),
                          ),
                        ],
                      ),
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
                            '1000, 00 rsd',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.7),
                              fontFamily: 'Baloo2Medium',
                            ),
                          ),
                        ],
                      ),
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
                            '1000, 00 rsd',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.7),
                              fontFamily: 'Baloo2Medium',
                            ),
                          ),
                        ],
                      ),
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
                            '1000, 00 rsd',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.7),
                              fontFamily: 'Baloo2Medium',
                            ),
                          ),
                        ],
                      ),
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
                            '1000, 00 rsd',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.7),
                              fontFamily: 'Baloo2Medium',
                            ),
                          ),
                        ],
                      ),
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
                            '1000, 00 rsd',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.kBlack.withOpacity(.7),
                              fontFamily: 'Baloo2Medium',
                            ),
                          ),
                        ],
                      ),
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
                            '1000, 00 rsd',
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
                            Image.asset('assets/images/treefn.png',height: 41,),
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
                Text(
                  Strings.kRateAuctioneer,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.kBlack.withOpacity(.9),
                    fontFamily: 'Baloo2Regular',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                AppCommon.appButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  ParkingCompletedPage()),
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
          top: 60,
          child: const Text(
            '${Strings.kParkingComplt}!',
            style: TextStyle(
              fontSize: 24,
              color: AppColors.kBlack,
              fontFamily: 'Baloo2SemiBold',
            ),
          ),
        ),
      ]),
    );
  }
}
