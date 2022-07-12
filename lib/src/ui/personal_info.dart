import 'package:flutter/material.dart';
import 'package:pinolo/src/ui/vehicle_info.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {

  bool _isObscure = true;
  bool _isObscure2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                const Text(
                  Strings.kSignUp,
                  style: TextStyle(
                    fontSize: 22,
                    color: AppColors.kBlack,
                    fontFamily: 'Baloo2SemiBold',
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      Strings.kFirstName,
                      textAlign: TextAlign.center,
                      style: AppCommon.labelTextStyle(),
                    ),
                  ),
                ),
                TextFormField(
                  style: AppCommon.fieldTextStyle(),
                  decoration: AppCommon.textFiledDecoration(hintText: Strings.kEnterFirstName),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      Strings.kLastName,
                      textAlign: TextAlign.center,
                      style: AppCommon.labelTextStyle(),
                    ),
                  ),
                ),
                TextFormField(
                  style: AppCommon.fieldTextStyle(),
                  decoration: AppCommon.textFiledDecoration(hintText: Strings.kEnterLastName),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      Strings.kPassword,
                      textAlign: TextAlign.center,
                      style: AppCommon.labelTextStyle(),
                    ),
                  ),
                ),
                TextFormField(
                  obscureText: _isObscure,
                  obscuringCharacter:'*',
                  style: AppCommon.fieldTextStyle(),
                  decoration: AppCommon.textFiledDecoration(
                    hintText: Strings.kEnterPassword,
                    Suffix:InkWell(
                      child: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onTap: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ), ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      Strings.kConfirmPassword,
                      textAlign: TextAlign.center,
                      style: AppCommon.labelTextStyle(),
                    ),
                  ),
                ),
                TextFormField(
                  obscureText: _isObscure2,
                  obscuringCharacter:'*',
                  style: AppCommon.fieldTextStyle(),
                  decoration: AppCommon.textFiledDecoration(
                    hintText: Strings.kConfirmYourPassword,
                    Suffix:InkWell(
                      child: Icon(
                        _isObscure2 ? Icons.visibility : Icons.visibility_off,
                      ),
                      onTap: () {
                        setState(() {
                          _isObscure2 = !_isObscure2;
                        });
                      },
                    ), ),
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
                        Icon(Icons.circle,size: 10,color: AppColors.kGrey,),
                        SizedBox(width: 20,),
                        Icon(Icons.circle,size: 10,color: AppColors.kGrey,),
                        SizedBox(width: 20,),
                        Icon(Icons.circle,size: 10,color: AppColors.kBlue,),
                        SizedBox(width: 20,),
                        Icon(Icons.circle,size: 10,color: AppColors.kGrey,),
                      ],
                    ),
                  ),
                  AppCommon.appButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  VehicleInfo()),
                        );
                      },
                      btnText:Strings.kNext,
                      btnColor:AppColors.kBlue,
                      horizontal: 153 ),
                ],
              ),
            ),
          )
        ],
      ),
    );;
  }
}
