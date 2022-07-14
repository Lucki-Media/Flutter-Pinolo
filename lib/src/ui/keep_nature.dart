import 'package:flutter/material.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';
class KeepNature extends StatelessWidget {
  const KeepNature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Strings.kLetsKeepOur,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: AppColors.kBlack,
                fontFamily: 'BalooRegular',
              ),
            ),
            Text(
              '${Strings.kNature}!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: AppColors.kBlack,
                fontFamily: 'BalooRegular',
              ),
            ),
            Image.asset('assets/images/tree_nature.png',height: 200,),
          ],
        ),
      ),
    );
  }
}
