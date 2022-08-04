import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';

class WaitingPage extends StatefulWidget {
  const WaitingPage({Key? key}) : super(key: key);

  @override
  State<WaitingPage> createState() => _WaitingPageState();
}

class _WaitingPageState extends State<WaitingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 65,
                ),
                Image.asset(
                  'assets/images/welcome_logo.png',
                  height: 300,
                ),
                const SizedBox(
                  height: 115,
                ),
                SizedBox(
                  width: 350,
                  child: Text(
                    Strings.kPleaseBePatient,
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
                TimerCountdown(
                  enableDescriptions:false,
                  format: CountDownTimerFormat.minutesSeconds,
                  endTime: DateTime.now().add(
                    Duration(
                      //days: 5,
                      //hours: 14,
                      minutes: 27,
                      seconds: 34,
                    ),
                  ),
                  onEnd: () {
                    print("Timer finished");
                  },
                  spacerWidth: 5,
                  timeTextStyle: TextStyle(
                    fontFamily: 'Baloo2SemiBold',
                    fontSize: 34,
                    color: AppColors.kBlack.withOpacity(.8)
                  ),
                  colonsTextStyle: TextStyle(
                      fontFamily: 'Baloo2SemiBold',
                      fontSize: 34,
                      color: AppColors.kBlack.withOpacity(.8)
                  ),
                ),
                Text(
                  Strings.kWaiting,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.kBlack.withOpacity(.4),
                    fontFamily: 'Baloo2Regular',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '${Strings.kYourEarnings} :',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.kBlack,
                    fontFamily: 'Baloo2Medium',
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                  },
                  style: ElevatedButton.styleFrom(
                    padding:
                    EdgeInsets.symmetric(vertical: 6, horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    textStyle: const TextStyle(
                        fontFamily: 'Baloo2Medium',
                        fontSize: 20,
                        color: AppColors.kWhite),
                    primary: AppColors.kDarkGreen,
                  ),
                  //icon: Icon(Icons.add, size: 18),
                  child:  Text('+250 din'),
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
                  Strings.kIfClickCancelStopAuc,
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
