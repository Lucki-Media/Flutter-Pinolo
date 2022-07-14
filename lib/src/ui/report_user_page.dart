import 'package:flutter/material.dart';
import 'package:pinolo/src/ui/keep_nature.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';
class ReportUserPage extends StatefulWidget {
  const ReportUserPage({Key? key}) : super(key: key);

  @override
  State<ReportUserPage> createState() => _ReportUserPageState();
}

class _ReportUserPageState extends State<ReportUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 250,
                ),
                Image.asset(
                  'assets/images/welcome_logo.png',
                  height: 300,
                ),
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  width: 280,
                  child: Text(
                    Strings.kIfYouHave,
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
                AppCommon.appButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierColor: Colors.transparent,
                        builder: (BuildContext context) {
                          return Dialog(
                            // contentPadding:const EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30.0))),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                 '${Strings.kThankYou}!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: AppColors.kBlack,
                                    fontFamily: 'Baloo2SemiBold',
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Image.asset(
                                  'assets/images/welcome_logo.png',
                                  height: 77,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 259,
                                  child: Text(
                                    Strings.kDontWorry,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.kBlack,
                                      fontFamily: 'Baloo2Regular',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    btnText: Strings.kReportUser,
                    btnColor: AppColors.kRed,
                    horizontal: 126),
                const SizedBox(
                  height: 20,
                ),
                AppCommon.appButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  KeepNature()),
                      );
                    },
                    btnText: Strings.kOkay,
                    btnColor: AppColors.kBlue,
                    horizontal: 150),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Container(
            height: 230,
            width: MediaQuery.of(context).size.width,
            color:Colors. grey[50],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '${Strings.kOops}!',
                    style: TextStyle(
                      fontSize: 24,
                      color: AppColors.kBlack,
                      fontFamily: 'Baloo2SemiBold',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 318,
                    child: Text(
                      '${Strings.kLooksLike}!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.kBlack.withOpacity(.9),
                        fontFamily: 'Baloo2Medium',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
