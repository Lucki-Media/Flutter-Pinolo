import 'package:flutter/material.dart';
import 'package:pinolo/src/ui/home_page.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';

class YourLocationPage extends StatefulWidget {
  const YourLocationPage({Key? key}) : super(key: key);

  @override
  State<YourLocationPage> createState() => _YourLocationPageState();
}

class _YourLocationPageState extends State<YourLocationPage> {
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
                    Strings.kWhereAreYou,
                    style: TextStyle(
                      fontSize: 27,
                      color: AppColors.kBlack,
                      fontFamily: 'Baloo2SemiBold',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                   SizedBox(
                    width: 286,
                    child: Text(
                      Strings.kAllowLocation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.kBlack.withOpacity(.4),
                        fontFamily: 'Baloo2Regular',
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
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: AppCommon.appButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                    btnText:  Strings.kShareLocation,
                    btnColor:AppColors.kBlue,
                    horizontal: 90),
              ),),
          ]
      ),
    );
  }
}
