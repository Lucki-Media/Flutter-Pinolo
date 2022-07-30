import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/ui/add_bank_account.dart';
import 'package:pinolo/src/ui/card_info.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';

class EmptyPayout extends StatefulWidget {
  const EmptyPayout({Key? key}) : super(key: key);

  @override
  State<EmptyPayout> createState() => _EmptyPayoutState();
}

class _EmptyPayoutState extends State<EmptyPayout> {

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
                Strings.kPayout,
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
      body: Stack(
        children: [
          Center(
            child: Column(
              children:   [
                const SizedBox(
                  height: 60,
                ),
                Image.asset(
                  'assets/images/welcome_logo.png',
                  height: 300,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  Strings.kThereIsNoInfo,
                  style: TextStyle(
                    fontSize: 22,
                    color: AppColors.kBlack,
                    fontFamily: 'Baloo2SemiBold',
                  ),
                ),
                SizedBox(
                  width: 255,
                  child: Text(
                    Strings.kDidNotAddAcc,
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
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            left: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddBankAccount()),
                    );
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                  backgroundColor: AppColors.kBlue,
                  //tooltip: '',
                  elevation: 5,
                  splashColor: Colors.grey,
                ),
                Text(
                  Strings.kAddNewBankAcc,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.kBlack,
                    fontFamily: 'Baloo2SemiBold',
                  ),
                ),
                SizedBox(
                  width: 260,
                  child: Text(
                    Strings.kCanAddMultiAcc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.kBlack.withOpacity(.3),
                      fontFamily: 'Baloo2Regular',
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
