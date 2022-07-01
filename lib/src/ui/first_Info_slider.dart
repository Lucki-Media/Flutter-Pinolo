import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pinolo/src/ui/your_location_page.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';
import 'package:intro_slider/intro_slider.dart';

class FirstInfoSlider extends StatefulWidget {
  const FirstInfoSlider({Key? key}) : super(key: key);

  @override
  State<FirstInfoSlider> createState() => _FirstInfoSliderState();
}

class _FirstInfoSliderState extends State<FirstInfoSlider> {

  List<Slide> slides = [];

  late Function goToTab;

  @override
  void initState() {
    super.initState();

    slides.add(
      Slide(
        title: Strings.kSliderTitle1,
        styleTitle: const TextStyle(
            fontFamily: 'Baloo2SemiBold',fontSize: 20,color: AppColors.kBlack
        ),
        description:
        Strings.kSliderText1,
        styleDescription: const TextStyle(
          fontSize: 16,
          color: AppColors.kBlack,
          fontFamily: 'Baloo2Regular',
        ),
        pathImage: "assets/images/welcome_logo.png",
      ),
    );
    slides.add(
      Slide(
        title: Strings.kSliderTitle2,
        styleTitle: const TextStyle(
            fontFamily: 'Baloo2SemiBold',fontSize: 20,color: AppColors.kBlack
        ),
        description: Strings.kSliderText2,
        styleDescription: const TextStyle(
          fontSize: 16,
          color: AppColors.kBlack,
          fontFamily: 'Baloo2Regular',
        ),
        pathImage: "assets/images/welcome_logo.png",
      ),
    );
    slides.add(
      Slide(
        title: Strings.kSliderTitle3,
        styleTitle: const TextStyle(
            fontFamily: 'Baloo2SemiBold',fontSize: 20,color: AppColors.kBlack
        ),
        description:
        Strings.kSliderText3,
        styleDescription: const TextStyle(
          fontSize: 16,
          color: AppColors.kBlack,
          fontFamily: 'Baloo2Regular',
        ),
        pathImage: "assets/images/welcome_logo.png",
      ),
    );
    slides.add(
      Slide(
        title: Strings.kSliderTitle4,
        styleTitle: const TextStyle(
            fontFamily: 'Baloo2SemiBold',fontSize: 20,color: AppColors.kBlack
        ),
        description:
        Strings.kSliderText4,
        styleDescription: const TextStyle(
          fontSize: 16,
          color: AppColors.kBlack,
          fontFamily: 'Baloo2Regular',
        ),
        pathImage: "assets/images/welcome_logo.png",
      ),
    );
    slides.add(
      Slide(
        title: Strings.kSliderTitle5,
        styleTitle: const TextStyle(
            fontFamily: 'Baloo2SemiBold',fontSize: 20,color: AppColors.kBlack
        ),
        description:
        Strings.kSliderText5,
        styleDescription: const TextStyle(
          fontSize: 16,
          color: AppColors.kBlack,
          fontFamily: 'Baloo2Regular',
        ),
        pathImage: "assets/images/tree.png",
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const YourLocationPage()),
    );
    // Back to the first tab
    //goToTab(0);
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
    log("onTabChangeCompleted, index: $index");
  }

  Widget renderNextBtn() {
    return const Text(Strings.kNext,
    style: TextStyle(
        fontFamily: 'Baloo2SemiBold',fontSize: 14,color: AppColors.kBlue
    ),);
  }

  Widget renderDoneBtn() {
    return const Text(Strings.kFinish,
      style: TextStyle(
          fontFamily: 'Baloo2SemiBold',fontSize: 14,color: AppColors.kGreen
      ),);
  }

  // Widget renderSkipBtn() {
  //   return const Icon(
  //     Icons.skip_next,
  //     color: Color(0xffffcc5c),
  //   );
  // }

  // ButtonStyle myButtonStyle() {
  //   return ButtonStyle(
  //     textStyle: ,
  //     shape: MaterialStateProperty.all<OutlinedBorder>(const StadiumBorder()),
  //     backgroundColor: MaterialStateProperty.all<Color>(const Color(0x33ffcc5c)),
  //     overlayColor: MaterialStateProperty.all<Color>(const Color(0x33ffcc5c)),
  //   );
  // }

  List<Widget> renderListCustomTabs() {
    return List.generate(
      slides.length,
          (index) => ListView(
            children: <Widget>[
              const SizedBox(
                height: 220,
              ),
              Image.asset(
                slides[index].pathImage!,
                width: 300.0,
                height: 300.0,
                //fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 80,
              ),
              Text(
                slides[index].title!,
                style: slides[index].styleTitle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80,right: 80),
                child: Text(
                  slides[index].description ?? '',
                  style: slides[index].styleDescription,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      // Skip button
      //renderSkipBtn: renderSkipBtn(),
      //skipButtonStyle: myButtonStyle(),

      // Next button
      renderNextBtn: renderNextBtn(),
     // nextButtonStyle: myButtonStyle(),

      // Done button
      renderDoneBtn: renderDoneBtn(),
      onDonePress: onDonePress,
     // doneButtonStyle: myButtonStyle(),

      // Dot indicator
      colorDot: AppColors.kGrey,
      colorActiveDot:AppColors.kBlue,
      sizeDot: 7.0,
      typeDotAnimation: DotSliderAnimation.DOT_MOVEMENT,

      // Tabs
      listCustomTabs: renderListCustomTabs(),
      backgroundColorAllSlides: AppColors.kWhite,
      refFuncGoToTab: (refFunc) {
        goToTab = refFunc;
      },

      // Behavior
      scrollPhysics: const BouncingScrollPhysics(),

      // Show or hide status bar
      hideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: onTabChangeCompleted,
    );
  }
}

