import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/ui/favorites_page.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';
class AddBankAccount extends StatefulWidget {
  const AddBankAccount({Key? key}) : super(key: key);

  @override
  State<AddBankAccount> createState() => _AddBankAccountState();
}

class _AddBankAccountState extends State<AddBankAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              minimum:const EdgeInsets.only(top: 35.0,bottom: 12),
              top: false,
              bottom: false,
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child:const Text(
                          '+${Strings.kAddNewBankAcc}',
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.kBlack,
                            fontFamily: 'Baloo2SemiBold',
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: IconButton(
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
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AppCommon.divider(),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/images/welcome_logo.png',
                    height: 145,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      Strings.kChooseYourBank,
                      textAlign: TextAlign.center,
                      style: AppCommon.labelTextStyle(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    style: AppCommon.fieldTextStyle(),
                    decoration: AppCommon.textFiledDecoration(hintText: Strings.kChooseBank,
                        Suffix: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/bank_logo.png',
                            height: 20,
                          ),
                        ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      Strings.kBankAccNo,
                      textAlign: TextAlign.center,
                      style: AppCommon.labelTextStyle(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    style: AppCommon.fieldTextStyle(),
                    decoration: AppCommon.textFiledDecoration(hintText: Strings.kEnterNumber),
                  ),
                  SizedBox(
                    width: 295,
                    child: Text(
                      Strings.kAccNoWillUsed,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.kBlack.withOpacity(.3),
                        fontFamily: 'Baloo2Regular',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 195,
                  ),
                  AppCommon.appButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  FavoritesPage()),
                        );
                      },
                      btnText:Strings.kDone,
                      btnColor:AppColors.kBlue,
                      horizontal: 140)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
