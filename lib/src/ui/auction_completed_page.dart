import 'package:flutter/material.dart';
import 'package:pinolo/src/ui/parking_completed_page.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';

class AuctionCompletedPage extends StatefulWidget {
  const AuctionCompletedPage({Key? key}) : super(key: key);

  @override
  State<AuctionCompletedPage> createState() => _AuctionCompletedPageState();
}

class _AuctionCompletedPageState extends State<AuctionCompletedPage> {
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
                width: 286,
                child: Text(
                  '${Strings.kBidMost}!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.kBlack.withOpacity(.9),
                    fontFamily: 'Baloo2Medium',
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/welcome_logo.png',
                height: 300,
              ),
              const SizedBox(
                height: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${Strings.kAuctioneerWaiting}:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.kBlack.withOpacity(.9),
                      fontFamily: 'Baloo2Medium',
                    ),
                  ),
                  Text(
                    'Obilicev Venac 18-20',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kBlack.withOpacity(.7),
                      fontFamily: 'Baloo2Regular',
                    ),
                  ),
                  Text(
                    'Belgrade',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kBlack.withOpacity(.7),
                      fontFamily: 'Baloo2Regular',
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 45,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: AppCommon.appButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  ParkingCompletedPage()),
                  );
                },
                btnText: '${Strings.kLetsGo}!',
                btnColor: AppColors.kBlue,
                horizontal: 133),
          ),
        ),
      ]),
    );
  }
}
