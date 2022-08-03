import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/ui/payment_method.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';

class SearchingPage extends StatelessWidget {
  const SearchingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Image.asset(
                  'assets/images/welcome_logo.png',
                  height: 300,
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  '${Strings.kSearching}. . .',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 34,
                    color: AppColors.kBlack.withOpacity(.8),
                    fontFamily: 'Baloo2SemiBold',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 284,
                  child: Text(
                    Strings.kPlzBePatient,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kBlack.withOpacity(.9),
                      fontFamily: 'Baloo2Regular',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  PaymentMethod()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        width: 1.0,
                        color: AppColors.kBlack.withOpacity(.2),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 150),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      primary: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child: Text(
                      Strings.kCancel,
                      style: TextStyle(
                          fontFamily: 'Baloo2Regular',
                          fontSize: 16,
                          color: AppColors.kBlack.withOpacity(.2)),
                    ),
                  ),
                ),
                Text(
                  Strings.kIfYouClickCancel,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.kBlack.withOpacity(.3),
                    fontFamily: 'Baloo2Regular',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
