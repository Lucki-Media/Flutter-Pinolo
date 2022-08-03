import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';

class CardInfo extends StatefulWidget {
  const CardInfo({Key? key}) : super(key: key);

  @override
  State<CardInfo> createState() => _CardInfoState();
}

class _CardInfoState extends State<CardInfo> {


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
              Expanded(
                child: Center(
                  child: const Text(
                    'Visa',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.kBlack,
                      fontFamily: 'Baloo2SemiBold',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
               padding: const EdgeInsets.only(top: 20,left: 16,bottom: 10),
               child: Text(
                Strings.kCardInfo,
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.kBlack,
                  fontFamily: 'Baloo2SemiBold',
                ),
            ),
             ),
            Container(
              width: 400,
              height: 225,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/images/card_bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: SizedBox(
                            width:126,
                            child: Text(
                              'Raiffeisen BANK',
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColors.kBlack,
                                fontFamily: 'Baloo2Medium',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: Center(
                        child: Text(
                          '**** **** **** ****  2451',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.kBlack,
                            fontFamily: 'Baloo2SemiBold',
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 85.0),
                          child: Text(
                            'Expires:04/24',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.kBlack,
                              fontFamily: 'Baloo2Medium',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text(
                            'Visa',
                            style: TextStyle(
                              fontSize: 26,
                              color: AppColors.kWhite,
                              fontFamily: 'Baloo2SemiBold',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ) /* add child content here */,
            ),
          ],
        ),
      ),
    );
  }
}