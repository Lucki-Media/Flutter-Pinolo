import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';
class PayoutHistory extends StatefulWidget {
  const PayoutHistory({Key? key}) : super(key: key);

  @override
  State<PayoutHistory> createState() => _PayoutHistoryState();
}

class _PayoutHistoryState extends State<PayoutHistory> {
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,top: 5),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              Strings.kPayout,
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
            Divider(
              color: AppColors.kBlack
                  .withOpacity(.2), //color of divider
              height: 20, //height spacing of divider
              thickness: 1, //thickness of divier line
              indent: 13, //spacing at the start of divider
              //endIndent: 25, //spacing at the end of divider
            ),
            Text(
              Strings.kStatus,
              style: TextStyle(
                fontSize: 18,
                color: AppColors.kBlack.withOpacity(.7),
                fontFamily: 'Baloo2Medium',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.kCancelled,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kRed.withOpacity(.8),
                      fontFamily: 'Baloo2Medium',
                    ),
                  ),
                  Text(
                    Strings.kPending,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kYellow.withOpacity(.8),
                      fontFamily: 'Baloo2Medium',
                    ),
                  ),
                  Text(
                    Strings.kCompleted,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kDarkGreen,
                      fontFamily: 'Baloo2Medium',
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColors.kBlack
                  .withOpacity(.2), //color of divider
              height: 20, //height spacing of divider
              thickness: 1, //thickness of divier line
              indent: 13, //spacing at the start of divider
              //endIndent: 25, //spacing at the end of divider
            ),
            Text(
              Strings.kSubtotal,
              style: TextStyle(
                fontSize: 18,
                color: AppColors.kBlack.withOpacity(.7),
                fontFamily: 'Baloo2Medium',
              ),
            ),
            Text(
              '+2000, 00 ${Strings.krsd}',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.kBlack.withOpacity(.5),
                fontFamily: 'Baloo2Regular',
              ),
            ),
            Divider(
              color: AppColors.kBlack
                  .withOpacity(.2), //color of divider
              height: 20, //height spacing of divider
              thickness: 1, //thickness of divier line
              indent: 13, //spacing at the start of divider
              //endIndent: 25, //spacing at the end of divider
            ),
            Text(
              Strings.kReferNo,
              style: TextStyle(
                fontSize: 18,
                color: AppColors.kBlack.withOpacity(.7),
                fontFamily: 'Baloo2Medium',
              ),
            ),
            Text(
              'R126T3Y42874274Y713',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.kBlack.withOpacity(.5),
                fontFamily: 'Baloo2Regular',
              ),
            ),
            Divider(
              color: AppColors.kBlack
                  .withOpacity(.2), //color of divider
              height: 20, //height spacing of divider
              thickness: 1, //thickness of divier line
              indent: 13, //spacing at the start of divider
              //endIndent: 25, //spacing at the end of divider
            ),
            Text(
              Strings.kTransID,
              style: TextStyle(
                fontSize: 18,
                color: AppColors.kBlack.withOpacity(.7),
                fontFamily: 'Baloo2Medium',
              ),
            ),
            Text(
              '323588329538295328923595329',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.kBlack.withOpacity(.5),
                fontFamily: 'Baloo2Regular',
              ),
            ),
            Divider(
              color: AppColors.kBlack
                  .withOpacity(.2), //color of divider
              height: 20, //height spacing of divider
              thickness: 1, //thickness of divier line
              indent: 13, //spacing at the start of divider
              //endIndent: 25, //spacing at the end of divider
            ),
            Text(
              Strings.kBankAccID,
              style: TextStyle(
                fontSize: 18,
                color: AppColors.kBlack.withOpacity(.7),
                fontFamily: 'Baloo2Medium',
              ),
            ),
            Text(
              '444124211242114242412',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.kBlack.withOpacity(.5),
                fontFamily: 'Baloo2Regular',
              ),
            ),
            Divider(
              color: AppColors.kBlack
                  .withOpacity(.2), //color of divider
              height: 20, //height spacing of divider
              thickness: 1, //thickness of divier line
              indent: 13, //spacing at the start of divider
              //endIndent: 25, //spacing at the end of divider
            ),
          ],
        ),
      ),
    );
  }
}
