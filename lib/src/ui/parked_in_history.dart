import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';
class ParkedInHistory extends StatefulWidget {
  const ParkedInHistory({Key? key}) : super(key: key);

  @override
  State<ParkedInHistory> createState() => _ParkedInHistoryState();
}

class _ParkedInHistoryState extends State<ParkedInHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0,bottom: 10),
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
            const Text(
              Strings.kYouParkedIn,
              style: TextStyle(
                fontSize: 22,
                color: AppColors.kBlack,
                fontFamily: 'Baloo2SemiBold',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'March 21, 2022 at 16:14',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kBlack.withOpacity(.4),
                      fontFamily: 'Baloo2Regular',
                    ),
                  ),
                  Text(
                    '10 min',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kBlack.withOpacity(.5),
                      fontFamily: 'Baloo2SemiBold',
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColors.kBlack.withOpacity(.2), //color of divider
              height: 20, //height spacing of divider
              thickness: 1, //thickness of divier line
              indent: 15, //spacing at the start of divider
              //endIndent: 25, //spacing at the end of divider
            ),
            Text(
              Strings.kReceipt,
              style: TextStyle(
                  color: AppColors.kBlack
                      .withOpacity(.9),
                  fontFamily: 'Baloo2Medium',
                  fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0,top: 10),
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
            Divider(
              color: AppColors.kBlack.withOpacity(.2), //color of divider
              height: 20, //height spacing of divider
              thickness: 1, //thickness of divier line
              indent: 15, //spacing at the start of divider
              //endIndent: 25, //spacing at the end of divider
            ),
            Text(
              Strings.kAuctioneer,
              style: TextStyle(
                  color: AppColors.kBlack
                      .withOpacity(.9),
                  fontFamily: 'Baloo2Medium',
                  fontSize: 20),
            ),
            Text(
              'Jovana A',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.kBlack.withOpacity(.7),
                fontFamily: 'Baloo2Regular',
              ),
            ),
            Text(
              'Škoda Octavia',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.kBlack.withOpacity(.7),
                fontFamily: 'Baloo2Regular',
              ),
            ),
        ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            padding:
            EdgeInsets.symmetric(vertical: 4, horizontal: 24),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            textStyle: const TextStyle(
                fontFamily: 'Baloo2Regular',
                fontSize: 14,
                color: AppColors.kWhite),
            primary: AppColors.kBlue,
          ),
          //icon: Icon(Icons.add, size: 18),
          child:  Text(Strings.kRateUser),
        ),
            Divider(
              color: AppColors.kBlack.withOpacity(.2), //color of divider
              height: 20, //height spacing of divider
              thickness: 1, //thickness of divier line
              indent: 15, //spacing at the start of divider
              //endIndent: 25, //spacing at the end of divider
            ),
            Text(
              Strings.kLocation,
              style: TextStyle(
                  color: AppColors.kBlack
                      .withOpacity(.9),
                  fontFamily: 'Baloo2Medium',
                  fontSize: 20),
            ),
            Row(
              children: [
                Text(
                  '${Strings.kAt}:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.kBlack.withOpacity(.7),
                    fontFamily: 'Baloo2Regular',
                  ),
                ),
                SizedBox(
                  width: 170,
                  child: Text(
                    'Pjarona De Mondezina, Beograd 1100, Srbija',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kBlack.withOpacity(.5),
                      fontFamily: 'Baloo2Regular',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
