import 'package:flutter/material.dart';
import 'package:pinolo/src/ui/first_Info_slider.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:   [
              const Text(
                Strings.kWelcomeTo,
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.kBlack,
                  fontFamily: 'BalooRegular',
                ),
              ),
              const Text(
                '${Strings.kPinolo}!',
                style: TextStyle(
                  fontSize: 34,
                  color: AppColors.kBlack,
                  fontFamily: 'BalooRegular',
                ),
              ),
               SizedBox(
                width: 255,
                child: Text(
                  Strings.kParkApp,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.kBlack.withOpacity(.8),
                    fontFamily: 'Baloo2Medium',
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/images/welcome_logo.png',
                height: 300,
              ),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
           Positioned(
            bottom: 45,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: AppCommon.appButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FirstInfoSlider()),
                    );
                  },
                  btnText:  Strings.kGetStart,
                  btnColor:AppColors.kOrange,
              horizontal: 120),
            ),),
        ]
      ),
    );
  }
}