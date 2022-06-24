import 'package:flutter/material.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    Strings.kHello,
                    style: TextStyle(
                      fontSize: 27,
                      color: AppColors.kBlack,
                      fontFamily: 'Baloo2SemiBold',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    width: 286,
                    child: Text(
                      Strings.kAlreadyAcc,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.kBlack,
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
              bottom: 35,
              //left: 30,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const FirstInfoSlider()),
                      // );
                    },
                    style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 138),shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),textStyle: const TextStyle(fontFamily: 'Baloo2SemiBold',fontSize: 16,color: AppColors.kWhite),primary: AppColors.kOrange,),
                    //icon: Icon(Icons.add, size: 18),
                    child: const Text(Strings.kLogIn),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const FirstInfoSlider()),
                      // );
                    },
                    style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 133),shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),textStyle: const TextStyle(fontFamily: 'Baloo2SemiBold',fontSize: 16,color: AppColors.kWhite),primary: AppColors.kBlue,),
                    //icon: Icon(Icons.add, size: 18),
                    child: const Text(Strings.kSignUp),
                  ),
                ],
              ),),
          ]
      ),
    );
  }
}
