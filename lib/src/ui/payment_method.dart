import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';
class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
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
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: const Text(
                      Strings.kPaymentMethod,
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.kBlack,
                        fontFamily: 'Baloo2SemiBold',
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: CircleAvatar(
                        backgroundColor: AppColors.kGrey,
                        child: Image.asset(
                          'assets/images/info.png',
                          height: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0,left: 30),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/Bank_img.png',
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          Strings.kPayWithBal,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.kBlack.withOpacity(.9),
                            fontFamily: 'Baloo2SemiBold',
                          ),
                        ),
                        Text(
                          '${Strings.kAvailable}: 2350 ${Strings.krsd}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.kBlack.withOpacity(.4),
                            fontFamily: 'Baloo2Regular',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Text(
                      '7% Off',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.kBlack,
                        fontFamily: 'Baloo2Regular',
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: AppColors.kDividerGrey, //color of divider
                height: 5, //height spacing of divider
                thickness: 1, //thickness of divier line
                indent: 25, //spacing at the start of divider
                //endIndent: 25, //spacing at the end of divider
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 30),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/coin.png',
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          Strings.kUsePinoloCoins,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.kBlack.withOpacity(.9),
                            fontFamily: 'Baloo2SemiBold',
                          ),
                        ),
                        Text(
                          '${Strings.kAvailable}: 1000 ${Strings.kCoins}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.kBlack.withOpacity(.4),
                            fontFamily: 'Baloo2Regular',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 132,
                    ),
                    Text(
                      '2% Off',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.kBlack,
                        fontFamily: 'Baloo2Regular',
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: AppColors.kDividerGrey, //color of divider
                height: 5, //height spacing of divider
                thickness: 1, //thickness of divier line
                indent: 25, //spacing at the start of divider
                //endIndent: 25, //spacing at the end of divider
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0,left: 30),
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Visa',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.kBlack.withOpacity(.9),
                            fontFamily: 'Baloo2SemiBold',
                          ),
                        ),
                        Text(
                          '**** **** **** 4255. Expires: 04/24',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.kBlack.withOpacity(.4),
                            fontFamily: 'Baloo2Regular',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: AppColors.kDividerGrey, //color of divider
                height: 5, //height spacing of divider
                thickness: 1, //thickness of divier line
                indent: 25, //spacing at the start of divider
                //endIndent: 25, //spacing at the end of divider
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0,left: 30),
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mastercard',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.kBlack.withOpacity(.9),
                            fontFamily: 'Baloo2SemiBold',
                          ),
                        ),
                        Text(
                          '**** **** **** 4255. Expires: 04/24',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.kBlack.withOpacity(.4),
                            fontFamily: 'Baloo2Regular',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: AppColors.kDividerGrey, //color of divider
                height: 5, //height spacing of divider
                thickness: 1, //thickness of divier line
                indent: 25, //spacing at the start of divider
                //endIndent: 25, //spacing at the end of divider
              ),
            ],
          ),
          Positioned(
            bottom: 35,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: AppCommon.appButton(
                  onPressed: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>  VehicleInfo()),
                    // );
                  },
                  btnText:'+${Strings.kAddNewCard}',
                  btnColor:AppColors.kBlue,
                  horizontal: 100 ),
            ),
          )
        ],
      ),
    );
  }
}
