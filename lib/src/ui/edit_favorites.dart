import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';

class EditFavorites extends StatefulWidget {
  const EditFavorites({Key? key}) : super(key: key);

  @override
  State<EditFavorites> createState() => _EditFavoritesState();
}

class _EditFavoritesState extends State<EditFavorites> {
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
                      'Obilicev Venac 18-20',
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
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
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
                        width: 70,
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
                        width: 70,
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
                        width: 70,
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
                        width: 70,
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
                        width: 70,
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
              ],
            ),
          ),
          Positioned(
            bottom: 35,
            child: Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: AppCommon.appButton(
                  onPressed: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>  VehicleInfo()),
                    // );
                  },
                  btnText:Strings.kDone,
                  btnColor:AppColors.kBlue,
                  horizontal: 153 ),
            ),
          )

        ],
      ),
    );
  }
}
