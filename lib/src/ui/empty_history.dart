import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';

class EmptyHistory extends StatefulWidget {
  const EmptyHistory({Key? key}) : super(key: key);

  @override
  State<EmptyHistory> createState() => _EmptyHistoryState();
}

class _EmptyHistoryState extends State<EmptyHistory> {

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
                Strings.kMyHistory,
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
      body: Center(
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
              width: 275,
              child: Text(
                Strings.kYouHaveNotParked,
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
    );
  }

}
