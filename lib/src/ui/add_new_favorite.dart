import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/ui/searching_page.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';

class AddNewFavorite extends StatefulWidget {
  const AddNewFavorite({Key? key}) : super(key: key);

  @override
  State<AddNewFavorite> createState() => _AddNewFavoriteState();
}

class _AddNewFavoriteState extends State<AddNewFavorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
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
                          child:Text(
                            '+${Strings.kAddNewFavorite}',
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
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(Strings.kChooseIcon,style: TextStyle(
                      fontSize: 18,
                      color: AppColors.kBlack,
                      fontFamily: 'Baloo2Medium',
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,bottom: 30),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 68,
                            child: MaterialButton(
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              onPressed: () {},
                              child: Image.asset(
                                'assets/images/home.png',
                                height: 25,
                              ),
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(
                                  side: BorderSide(color: AppColors.kToggleLGrey)
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 68,
                            child: MaterialButton(
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              onPressed: () {},
                              child: Image.asset(
                                'assets/images/bag.png',
                                height: 25,
                              ),
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(
                                  side: BorderSide(color: AppColors.kToggleLGrey)
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 68,
                            child: MaterialButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/images/heart.png',
                                height: 25,
                              ),
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(
                                  side: BorderSide(color: AppColors.kToggleLGrey)
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 68,
                            child: MaterialButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/images/diamond.png',
                                height: 25,
                              ),
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(
                                  side: BorderSide(color: AppColors.kToggleLGrey)
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 68,
                            child: MaterialButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/images/diamond.png',
                                height: 25,
                              ),
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(
                                  side: BorderSide(color: AppColors.kToggleLGrey)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(Strings.kAddName,style: TextStyle(
                        fontSize: 18,
                        color: AppColors.kBlack,
                        fontFamily: 'Baloo2Medium',
                      ),),
                    ),
                    TextFormField(
                      style: AppCommon.fieldTextStyle(),
                      decoration: AppCommon.textFiledDecoration(
                          hintText: Strings.kEnterFavName),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0,top: 30),
                      child: Text(Strings.kAddAddress,style: TextStyle(
                        fontSize: 18,
                        color: AppColors.kBlack,
                        fontFamily: 'Baloo2Medium',
                      ),),
                    ),
                    TextFormField(
                      style: AppCommon.fieldTextStyle(),
                      decoration: AppCommon.textFiledDecoration(
                          hintText: Strings.kEnterAddress),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 45,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: AppCommon.appButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  SearchingPage()),
                    );
                  },
                  btnText:Strings.kDone,
                  btnColor:AppColors.kBlue,
                  horizontal: 142),
            ),
          )

        ],
      ),
    );
  }
}
