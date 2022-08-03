import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/ui/parking_completed_auctioneer.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';
class KeepNature extends StatelessWidget {
  const KeepNature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 50),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: CircleAvatar(
                    radius: 16.0,
                    backgroundColor: AppColors.kDarkGreen,
                    child: Icon(FontAwesomeIcons.arrowLeft, color: AppColors.kWhite,size: 18,),
                  ),
                ),
              ),
            ),
            Text(
              Strings.kLetsKeepOur,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: AppColors.kBlack,
                fontFamily: 'BalooRegular',
              ),
            ),
            Text(
              '${Strings.kNature}!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: AppColors.kBlack,
                fontFamily: 'BalooRegular',
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Image.asset('assets/images/tree_nature.png',height: 200,),
            SizedBox(
              height: 120,
            ),
            SizedBox(
              width: 332,
              child: Text(
                Strings.kEveryTimeYouPark,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.kBlack.withOpacity(.8),
                  fontFamily: 'Baloo2Regular',
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            AppCommon.appButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  ParkingCompletedAuctioneer()),
                  );
                },
                btnText: Strings.kLearnMore,
                btnColor: AppColors.kDarkGreen,
                horizontal: 50),
          ],
        ),
      ),
    );
  }
}
