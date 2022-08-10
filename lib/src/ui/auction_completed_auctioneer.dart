import 'package:flutter/material.dart';
import 'package:pinolo/src/ui/parkout_page.dart';
import 'package:pinolo/src/ui/second_map.dart';
import 'package:pinolo/src/ui/waiting_page.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';

class AuctionCompletedAuctioneer extends StatefulWidget {
  const AuctionCompletedAuctioneer({Key? key}) : super(key: key);

  @override
  State<AuctionCompletedAuctioneer> createState() => _AuctionCompletedAuctioneerState();
}

class _AuctionCompletedAuctioneerState extends State<AuctionCompletedAuctioneer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                '${Strings.kAucComplt}!',
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.kBlack,
                  fontFamily: 'Baloo2SemiBold',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 270,
                child: Text(
                  '${Strings.kYouFoundBidder}!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.kBlack.withOpacity(.9),
                    fontFamily: 'Baloo2Medium',
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Image.asset(
                'assets/images/welcome_logo.png',
                height: 300,
              ),
              const SizedBox(
                height: 120,
              ),
              SizedBox(
                width: 240,
                child: Text(
                  '${Strings.kWaitForHim}!',
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
          bottom: 40,
          //left: 30,
          child: AppCommon.appButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  SecondMap()),
                );
              },
              btnText: '${Strings.kAlright}!',
              btnColor: AppColors.kOrange,
              horizontal: 140),
        ),
      ]),
    );
  }
}
