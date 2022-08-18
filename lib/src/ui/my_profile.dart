import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  bool _isObscure = true;
  bool _isObscure2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        shadowColor: AppColors.kShadowGrey,
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: AppColors.kWhite,
        //foregroundColor: AppColors.kBlue,
        //centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: CircleAvatar(
                  backgroundColor: AppColors.kGrey,
                  child: Icon(
                    FontAwesomeIcons.arrowLeft,
                    color: AppColors.kBlack,
                    size: 18,
                  ),
                ),
              ),
              SizedBox(
                width: 100,
              ),
              const Text(
                Strings.kMyProfile,
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.kBlack,
                  fontFamily: 'Baloo2SemiBold',
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 24),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  Strings.kYourName,
                                  textAlign: TextAlign.center,
                                  style: AppCommon.labelTextStyle(),
                                ),
                              ),
                            ),
                            TextFormField(
                              style: AppCommon.fieldTextStyle(),
                              decoration: AppCommon.textFiledDecoration(
                                  hintText: 'Anastasija'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 24),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  Strings.kYourLastName,
                                  textAlign: TextAlign.center,
                                  style: AppCommon.labelTextStyle(),
                                ),
                              ),
                            ),
                            TextFormField(
                              style: AppCommon.fieldTextStyle(),
                              decoration: AppCommon.textFiledDecoration(
                                  hintText: 'Stanisavljević'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      Strings.kYourEmail,
                      textAlign: TextAlign.center,
                      style: AppCommon.labelTextStyle(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: TextFormField(
                    style: AppCommon.fieldTextStyle(),
                    decoration: AppCommon.textFiledDecoration(
                        hintText: 'djordjevic.djordje98@gmail.com'),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Divider(
                  color: AppColors.kDividerGrey, //color of divider
                  height: 10, //height spacing of divider
                  thickness: 1, //thickness of divier line
                  indent: 25, //spacing at the start of divider
                  //endIndent: 25, //spacing at the end of divider
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, bottom: 20),
                  child: Text(
                    Strings.kChangePW,
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.kBlack.withOpacity(.9),
                      fontFamily: 'Baloo2SemiBold',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      Strings.kCurrentPW,
                      textAlign: TextAlign.center,
                      style: AppCommon.labelTextStyle(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: TextFormField(
                    obscureText: _isObscure,
                    obscuringCharacter: '*',
                    style: AppCommon.fieldTextStyle(),
                    decoration: AppCommon.textFiledDecoration(
                      hintText: Strings.kEnterCurrentPW,
                      Suffix: InkWell(
                        child: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                        ),
                        onTap: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      Strings.kNewPW,
                      textAlign: TextAlign.center,
                      style: AppCommon.labelTextStyle(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: TextFormField(
                    obscureText: _isObscure2,
                    obscuringCharacter: '*',
                    style: AppCommon.fieldTextStyle(),
                    decoration: AppCommon.textFiledDecoration(
                      hintText: Strings.kEnterNewPW,
                      Suffix: InkWell(
                        child: Icon(
                          _isObscure2 ? Icons.visibility : Icons.visibility_off,
                        ),
                        onTap: () {
                          setState(() {
                            _isObscure2 = !_isObscure2;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: AppColors.kDividerGrey, //color of divider
                  height: 40, //height spacing of divider
                  thickness: 1, //thickness of divier line
                  indent: 25, //spacing at the start of divider
                  //endIndent: 25, //spacing at the end of divider
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      Strings.kYourPhoneNo,
                      textAlign: TextAlign.center,
                      style: AppCommon.labelTextStyle(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: IntlPhoneField(
                    initialValue: '601304240',
                    disableLengthCheck: true,
                    style: AppCommon.fieldTextStyle(),
                    decoration: AppCommon.textFiledDecoration(),
                    initialCountryCode: 'RS',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 300,
                    child: RichText(
                      textAlign: TextAlign.center,
                      maxLines: 5,
                      text: TextSpan(children: [

                        TextSpan(
                          text:Strings.kAccPhoneNo,
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.kBlack.withOpacity(.3),
                            fontFamily: 'Baloo2Regular',
                          ),
                        ),
                        WidgetSpan(
                          child: GestureDetector(
                            child: Text(Strings.klink,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: AppColors.kBlue)),
                            onTap: () async {
                              const url = 'https://www.google.com';
                              if (await canLaunch(url)) launch(url);
                            },
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
            SizedBox(height: 95,),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: AppCommon.appButton(
                  onPressed: () {},
                  btnText: Strings.kSave,
                  btnColor: AppColors.kBlue,
                  horizontal: 147),
            ),
          ],
        ),
      ),
    );
  }
}
