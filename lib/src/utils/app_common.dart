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

  static ElevatedButton appButton({onPressed , required String btnText, required Color btnColor,required double horizontal}){
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding:
        EdgeInsets.symmetric(vertical: 10, horizontal: horizontal),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)),
        textStyle: const TextStyle(
            fontFamily: 'Baloo2SemiBold',
            fontSize: 16,
            color: AppColors.kWhite),
        primary: btnColor,
      ),
      //icon: Icon(Icons.add, size: 18),
      child:  Text(btnText),
    );
  }
  static Container divider(){
    return Container(
      height: 1.0,
      decoration: BoxDecoration(
        color:AppColors.kBorderGrey,
        boxShadow: [
          BoxShadow(
            color: AppColors.kShadowGrey,
            blurRadius: 4,
            offset: Offset(0,3), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
