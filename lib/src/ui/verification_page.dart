import 'package:flutter/material.dart';
import 'package:pinolo/src/ui/personal_info.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class Verification_page extends StatefulWidget {
  const Verification_page({Key? key}) : super(key: key);

  @override
  State<Verification_page> createState() => _Verification_pageState();
}

class _Verification_pageState extends State<Verification_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(alignment: Alignment.center, children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                Strings.kVerifyCode,
                style: TextStyle(
                  fontSize: 22,
                  color: AppColors.kBlack,
                  fontFamily: 'Baloo2SemiBold',
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/images/welcome_logo.png',
                height: 300,
              ),
              const SizedBox(
                height: 30,
              ),
              PinCodeTextField(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                appContext: context,
                //controller: _controllerOTP,
                pastedTextStyle: TextStyle(
                  color: AppColors.kBlue,
                  fontWeight: FontWeight.bold,
                ),
                length: 4,
                obscureText: true,
                obscuringCharacter: '*',

                blinkWhenObscuring: true,
                animationType: AnimationType.fade,
                validator: (v) {
                  if (v!.length < 3) {
                   // return AppStrings.fEnterCodeErrorMsg;
                  } else {
                    return null;
                  }
                },
                pinTheme: PinTheme(
                  activeColor: AppColors.kGrey,
                  selectedFillColor: AppColors.kWhite,
                  inactiveColor:AppColors.kGrey,
                  inactiveFillColor: AppColors.kWhite,
                  borderWidth:1,
                  shape: PinCodeFieldShape.circle,
                  //borderRadius: BorderRadius.circular(50.0),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeFillColor: AppColors.kBlue,
                ),
                cursorColor: AppColors.kBlue,
                animationDuration: Duration(milliseconds: 300),
                //enableActiveFill: true,
                // errorAnimationController: errorController,
                //controller: textEditingController,
                keyboardType: TextInputType.number,
                // boxShadows: [
                //   BoxShadow(
                //     offset: Offset(0, 1),
                //     color: Colors.black12,
                //     blurRadius: 10,
                //   )
                // ],
                // onCompleted: (v) {
                //   print("Completed");
                // },
                // onTap: () {
                //   print("Pressed");
                // },
                onChanged: (value) {
                  print(value);
                  setState(() {

                  });
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: (){},
                      child: Text(
                        Strings.kResend,
                        style: TextStyle(
                            decoration:TextDecoration.underline,
                            fontFamily: 'Baloo2Regular',
                            fontSize: 12,
                            color: AppColors.kBlack.withOpacity(.3)),
                      )),

                ],
              )
            ],
          ),
        ),
        Positioned(
          bottom: 35,
          //left: 30,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle,size: 10,color: AppColors.kGrey,),
                    SizedBox(width: 20,),
                    Icon(Icons.circle,size: 10,color: AppColors.kBlue,),
                    SizedBox(width: 20,),
                    Icon(Icons.circle,size: 10,color: AppColors.kGrey,),
                    SizedBox(width: 20,),
                    Icon(Icons.circle,size: 10,color: AppColors.kGrey,),
                  ],
                ),
              ),
              AppCommon.appButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  PersonalInfo()),
                    );
                  },
                  btnText:Strings.kNext,
                  btnColor:AppColors.kBlue,
                  horizontal: 145 ),
            ],
          ),
        ),
      ]),
    );
  }
}
