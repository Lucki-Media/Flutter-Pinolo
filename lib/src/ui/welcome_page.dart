import 'package:flutter/material.dart';
import 'package:pinolo/src/ui/first_Info_slider.dart';
import 'package:pinolo/src/utils/app_colors.dart';
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
              const Text(
                Strings.kParkApp,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.kBlack,
                  fontFamily: 'Baloo2Medium',
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
            bottom: 30,
            //left: 30,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstInfoSlider()),
                );
              },
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 100),shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),textStyle: const TextStyle(fontFamily: 'Baloo2SemiBold',fontSize: 16,color: AppColors.kWhite),primary: AppColors.kOrange,),
              //icon: Icon(Icons.add, size: 18),
              child: const Text(Strings.kGetStart),
            ),),
        ]
      ),
    );
  }
}