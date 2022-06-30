import 'package:flutter/material.dart';
import 'package:pinolo/src/utils/app_colors.dart';

class AppCommon {
  static InputDecoration textFiledDecoration({ String? hintText,  Widget? Suffix}) {
    return InputDecoration(
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
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: 14,
        color: AppColors.kBlack.withOpacity(.2),
        fontFamily: 'Baloo2Regular',
      ),
      suffixIcon: Suffix
      //labelText: ,
    );
  }

  static TextStyle labelTextStyle(){
    return TextStyle(
      fontSize: 16,
      color: AppColors.kBlack.withOpacity(.9),
      fontFamily: 'Baloo2Medium',
    );
  }

  static TextStyle fieldTextStyle(){
    return  TextStyle(
      fontSize: 14,
      color: AppColors.kBlack,
      fontFamily: 'Baloo2Regular',
    );
  }
  // static ScaffoldFeatureController showSnackBar(
  //     {required BuildContext context, required String text}) {
  //   return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //     content: Text(
  //       text,
  //       style: TextStyle(color: Colors.white),
  //     ),
  //     backgroundColor: Colors.red,
  //   ));
  // }
  //
  // static showToast(String msg) {
  //   Fluttertoast.showToast(
  //     msg: msg.split("||").join("\n"),
  //     toastLength: Toast.LENGTH_SHORT,
  //     gravity: ToastGravity.BOTTOM,
  //     timeInSecForIosWeb: 1,
  //     backgroundColor: Colors.black.withOpacity(.90),
  //     textColor: Colors.white,
  //     fontSize: 16.0,
  //   );
  //
  // }

}
