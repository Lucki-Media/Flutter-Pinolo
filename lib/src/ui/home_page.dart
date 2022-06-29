import 'package:flutter/material.dart';
import 'package:pinolo/src/ui/verification_page.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
              SizedBox(
                width: 286,
                child: Text(
                  Strings.kAlreadyAcc,
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
          bottom: 35,
          //left: 30,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (builder) {
                      return LogInPopUp();
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 138),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  textStyle: const TextStyle(
                      fontFamily: 'Baloo2SemiBold',
                      fontSize: 16,
                      color: AppColors.kWhite),
                  primary: AppColors.kOrange,
                ),
                //icon: Icon(Icons.add, size: 18),
                child: const Text(Strings.kLogIn),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (builder) {
                      return SignUpPopUp();
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 133),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  textStyle: const TextStyle(
                      fontFamily: 'Baloo2SemiBold',
                      fontSize: 16,
                      color: AppColors.kWhite),
                  primary: AppColors.kBlue,
                ),
                //icon: Icon(Icons.add, size: 18),
                child: const Text(Strings.kSignUp),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget LogInPopUp() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: CircleAvatar(
                        radius: 16.0,
                        backgroundColor: AppColors.kGrey,
                        child: Icon(Icons.close, color: AppColors.kBlack),
                      ),
                    ),
                    SizedBox(
                      width: 105,
                    ),
                    const Text(
                      Strings.kLogIn,
                      style: TextStyle(
                        fontSize: 22,
                        color: AppColors.kBlack,
                        fontFamily: 'Baloo2SemiBold',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 210,
                  child: Text(
                    Strings.kWelcomeBack,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kBlack.withOpacity(.4),
                      fontFamily: 'Baloo2Regular',
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 34),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      Strings.kEmail,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.kBlack.withOpacity(.9),
                        fontFamily: 'Baloo2Medium',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.kBlack,
                      fontFamily: 'Baloo2Regular',
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 25),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.kBlue, width: 1.0),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.kBlack.withOpacity(0.2),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      hintText: Strings.kEnterEmail,
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: AppColors.kBlack.withOpacity(.2),
                        fontFamily: 'Baloo2Regular',
                      ),
                      //labelText: 'e-mail',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 34),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      Strings.kPassword,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.kBlack.withOpacity(.9),
                        fontFamily: 'Baloo2Medium',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.kBlack,
                      fontFamily: 'Baloo2Regular',
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 25),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.kBlue, width: 1.0),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.kBlack.withOpacity(0.2),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      hintText: Strings.kEnterPassword,
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: AppColors.kBlack.withOpacity(.2),
                        fontFamily: 'Baloo2Regular',
                      ),
                      //labelText: 'Password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 237,
                      child: Text(
                        Strings.kLoginWith,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.kBlack.withOpacity(.3),
                          fontFamily: 'Baloo2Regular',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                          Strings.kForgotPassword,
                          style: TextStyle(
                              fontFamily: 'Baloo2Medium',
                              fontSize: 14,
                              color: AppColors.kRed),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 35,
            child: Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 140),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  textStyle: const TextStyle(
                      fontFamily: 'Baloo2SemiBold',
                      fontSize: 16,
                      color: AppColors.kWhite),
                  primary: AppColors.kOrange,
                ),
                //icon: Icon(Icons.add, size: 18),
                child: const Text(Strings.kLogIn),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget SignUpPopUp() {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: CircleAvatar(
                            radius: 16.0,
                            backgroundColor: AppColors.kGrey,
                            child: Icon(Icons.close, color: AppColors.kBlack),
                          ),
                        ),
                        SizedBox(
                          width: 105,
                        ),
                        const Text(
                          Strings.kSignUp,
                          style: TextStyle(
                            fontSize: 22,
                            color: AppColors.kBlack,
                            fontFamily: 'Baloo2SemiBold',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 210,
                      child: Text(
                        Strings.kCreateAcc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.kBlack.withOpacity(.4),
                          fontFamily: 'Baloo2Regular',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          Strings.kPhoneNumber,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.kBlack.withOpacity(.9),
                            fontFamily: 'Baloo2Medium',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: IntlPhoneField(
                        disableLengthCheck:true,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.kBlack,
                          fontFamily: 'Baloo2Regular',
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 25),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: AppColors.kBlue, width: 1.0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.kBlack.withOpacity(0.2),
                                width: 1.0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                         // hintText: ,
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: AppColors.kBlack.withOpacity(.2),
                            fontFamily: 'Baloo2Regular',
                          ),
                          //labelText: 'e-mail',
                        ),
                        initialCountryCode: 'RS',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.only(left: 10, right: 10),
                    //   child: TextFormField(
                    //     style: TextStyle(
                    //       fontSize: 14,
                    //       color: AppColors.kBlack,
                    //       fontFamily: 'Baloo2Regular',
                    //     ),
                    //     decoration: InputDecoration(
                    //       contentPadding: const EdgeInsets.symmetric(
                    //           vertical: 0, horizontal: 25),
                    //       focusedBorder: OutlineInputBorder(
                    //         borderSide: const BorderSide(
                    //             color: AppColors.kBlue, width: 1.0),
                    //         borderRadius: BorderRadius.circular(30.0),
                    //       ),
                    //       enabledBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(
                    //             color: AppColors.kBlack.withOpacity(0.2),
                    //             width: 1.0),
                    //         borderRadius: BorderRadius.circular(30.0),
                    //       ),
                    //       hintText: Strings.kEnterEmail,
                    //       hintStyle: TextStyle(
                    //         fontSize: 14,
                    //         color: AppColors.kBlack.withOpacity(.2),
                    //         fontFamily: 'Baloo2Regular',
                    //       ),
                    //       //labelText: 'e-mail',
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          Strings.kEmail,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.kBlack.withOpacity(.9),
                            fontFamily: 'Baloo2Medium',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.kBlack,
                          fontFamily: 'Baloo2Regular',
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 25),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: AppColors.kBlue, width: 1.0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.kBlack.withOpacity(0.2),
                                width: 1.0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          hintText: Strings.kEnterEmail,
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: AppColors.kBlack.withOpacity(.2),
                            fontFamily: 'Baloo2Regular',
                          ),
                          //labelText: 'e-mail',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 260,
                          child: Text(
                            Strings.kWhenYouEnter,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.kBlack.withOpacity(.3),
                              fontFamily: 'Baloo2Regular',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.5,
                            child: Checkbox(
                              value: isChecked,
                              side: BorderSide(
                                  width: 1,
                                  color: AppColors.kBlack.withOpacity(.2)),
                              shape: CircleBorder(),
                              activeColor: AppColors.kOrange,
                              //splashRadius: 20,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 280,
                            child: RichText(
                              text: new TextSpan(
                                style: new TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Baloo2Medium',
                                ),
                                children: <TextSpan>[
                                  new TextSpan(
                                      text: Strings.kIHaveRead,
                                      style: new TextStyle(
                                          color: AppColors.kBlack
                                              .withOpacity(.9))),
                                  new TextSpan(
                                      text: Strings.kTermsConditions,
                                      style:
                                          new TextStyle(color: AppColors.kRed)),
                                  new TextSpan(
                                      text: Strings.kAnd,
                                      style: new TextStyle(
                                          color: AppColors.kBlack
                                              .withOpacity(.9))),
                                  new TextSpan(
                                      text: Strings.kPrivacyPolicy,
                                      style:
                                          new TextStyle(color: AppColors.kRed)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 35,
                child: Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.circle,size: 10,color: AppColors.kBlue,),
                           SizedBox(width: 20,),
                           Icon(Icons.circle,size: 10,color: AppColors.kGrey,),
                           SizedBox(width: 20,),
                           Icon(Icons.circle,size: 10,color: AppColors.kGrey,),
                           SizedBox(width: 20,),
                           Icon(Icons.circle,size: 10,color: AppColors.kGrey,),
                         ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Verification_page()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 136),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          textStyle: const TextStyle(
                              fontFamily: 'Baloo2SemiBold',
                              fontSize: 16,
                              color: AppColors.kWhite),
                          primary: AppColors.kBlue,
                        ),
                        //icon: Icon(Icons.add, size: 18),
                        child: const Text(Strings.kSignUp),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
