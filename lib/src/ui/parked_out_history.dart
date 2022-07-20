import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';
class ParkedOutHistory extends StatefulWidget {
  const ParkedOutHistory({Key? key}) : super(key: key);

  @override
  State<ParkedOutHistory> createState() => _ParkedOutHistoryState();
}

class _ParkedOutHistoryState extends State<ParkedOutHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 10),
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
              Strings.kYouParkedOut,
              style: TextStyle(
                fontSize: 22,
                color: AppColors.kBlack,
                fontFamily: 'Baloo2SemiBold',
              ),
            ),
            Text(
              'March 21, 2022 at 16:14',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.kBlack.withOpacity(.4),
                fontFamily: 'Baloo2Regular',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${Strings.kBalChange}:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kBlack.withOpacity(.5),
                      fontFamily: 'Baloo2Regular',
                    ),
                  ),
                  Text(
                    '+ 235,00 ${Strings.krsd}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kFontGreen,
                      fontFamily: 'Baloo2Medium',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${Strings.kAmtBidded}:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kBlack.withOpacity(.5),
                      fontFamily: 'Baloo2Regular',
                    ),
                  ),
                  Text(
                    '1.000,00 ${Strings.krsd}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kBlack.withOpacity(.7),
                      fontFamily: 'Baloo2Medium',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${Strings.kParkOutTime}:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kBlack.withOpacity(.5),
                      fontFamily: 'Baloo2Regular',
                    ),
                  ),
                  Text(
                    '10 min',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kBlack.withOpacity(.7),
                      fontFamily: 'Baloo2Medium',
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColors.kDividerGrey, //color of divider
              height: 20, //height spacing of divider
              thickness: 1, //thickness of divier line
              indent: 15, //spacing at the start of divider
              //endIndent: 25, //spacing at the end of divider
            ),
            Text(
              Strings.kBidder,
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
                primary: AppColors.kOrange,
              ),
              //icon: Icon(Icons.add, size: 18),
              child:  Text(Strings.kRateUser),
            ),
            Divider(
              color: AppColors.kDividerGrey, //color of divider
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
