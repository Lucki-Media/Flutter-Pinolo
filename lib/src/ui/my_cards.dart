import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/ui/card_info.dart';
import 'package:pinolo/src/ui/empty_cards.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';

class MyCards extends StatefulWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  final items = List<String>.generate(3, (i) => "Item ${i + 1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                child: SafeArea(
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
                              Strings.kMyCards,
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
              ),
              AppCommon.divider(),
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = items[index];
                        return Dismissible(
                          direction: DismissDirection.endToStart,
                          key: Key(item),
                          onDismissed: (direction) {
                            // Removes that item the list on swipwe
                            setState(() {
                              items.removeAt(index);
                            });
                            // Shows the information on Snackbar
                            Scaffold.of(context).showSnackBar(
                                SnackBar(content: Text("$item dismissed")));
                          },
                          background: Container(color: Colors.red),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CardInfo()),
                              );
                            },
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0, top: 25, right: 22, bottom: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Visa',
                                              style: TextStyle(
                                                  color: AppColors.kBlack,
                                                  fontFamily: 'Baloo2Regular',
                                                  fontSize: 16),
                                            ),
                                            Text(
                                              '**** **** **** 4255. Expires: 04/24',
                                              style: TextStyle(
                                                  color: AppColors.kBlack.withOpacity(.4),
                                                  fontFamily: 'Baloo2Regular',
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CardInfo()),
                                            );
                                          },
                                          child: Icon(
                                            FontAwesomeIcons.chevronRight,
                                            size: 22,
                                            color: AppColors.kShadowGrey,
                                          )),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.kDividerGrey, //color of divider
                                  height: 0, //height spacing of divider
                                  thickness: 1, //thickness of divier line
                                  indent: 25, //spacing at the start of divider
                                  //endIndent: 25, //spacing at the end of divider
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (builder) {
                        return AddCardPopUp();
                      },
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
                  Strings.kAddNewCard,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.kBlack,
                    fontFamily: 'Baloo2SemiBold',
                  ),
                ),
                SizedBox(
                  width: 260,
                  child: Text(
                    Strings.kYouCanEnterMultiCards,
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

  Widget AddCardPopUp() {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 100.0,
            shadowColor: AppColors.kShadowGrey,
            automaticallyImplyLeading: false,
            elevation: 5,
            backgroundColor: AppColors.kWhite,
            title: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child:Column(
                //mainAxisSize: MainAxisSize.min,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child:  const Text(
                          '+${Strings.kAddNewCard}',
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
                              Icons.close,
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
          resizeToAvoidBottomInset: true,
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 34),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          Strings.kCardType,
                          textAlign: TextAlign.center,
                          style: AppCommon.labelTextStyle(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        style: AppCommon.fieldTextStyle(),
                        decoration: AppCommon.textFiledDecoration(hintText: Strings.kChooseCard),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          Strings.kCardInformation,
                          textAlign: TextAlign.center,
                          style: AppCommon.labelTextStyle(),
                        ),
                      ),
                    ),
                    Container(
                        height: 205,
                        width: 365,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 15),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    Strings.kCard,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.kWhite,
                                      fontFamily: 'Baloo2Medium',
                                    ),
                                  ),
                                ),
                              ),
                              TextFormField(
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.kBlack,
                                  fontFamily: 'Baloo2Regular',
                                ),
                                decoration: InputDecoration(
                                  filled: true, //<-- SEE HERE
                                  fillColor: AppColors.kWhite,
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
                                  hintText: '**** **** **** ****',
                                  hintStyle: TextStyle(
                                    fontSize: 18,
                                    color: AppColors.kBlack.withOpacity(.5),
                                    fontFamily: 'Baloo2Regular',
                                  ),
                                  //suffixIcon: Suffix
                                  //labelText: ,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 24),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              Strings.kExpiration,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: AppColors.kWhite,
                                                fontFamily: 'Baloo2Medium',
                                              ),
                                            ),
                                          ),
                                        ),
                                        TextFormField(
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: AppColors.kBlack,
                                            fontFamily: 'Baloo2Regular',
                                          ),
                                          decoration: InputDecoration(
                                            filled: true, //<-- SEE HERE
                                            fillColor: AppColors.kWhite,
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
                                            hintText: '00/00',
                                            hintStyle: TextStyle(
                                              fontSize: 18,
                                              color: AppColors.kBlack.withOpacity(.5),
                                              fontFamily: 'Baloo2Regular',
                                            ),
                                            //suffixIcon: Suffix
                                            //labelText: ,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 24),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              Strings.kSecurityCode,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: AppColors.kWhite,
                                                fontFamily: 'Baloo2Medium',
                                              ),
                                            ),
                                          ),
                                        ),
                                        TextFormField(
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: AppColors.kBlack,
                                            fontFamily: 'Baloo2Regular',
                                          ),
                                          decoration: InputDecoration(
                                            filled: true, //<-- SEE HERE
                                            fillColor: AppColors.kWhite,
                                            contentPadding: const EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 25),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: AppColors.kBlue, width: 1.0),
                                              borderRadius: BorderRadius.circular(14.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: AppColors.kBlack.withOpacity(0.2),
                                                  width: 1.0),
                                              borderRadius: BorderRadius.circular(14.0),
                                            ),
                                            hintText: '***',
                                            hintStyle: TextStyle(
                                              fontSize: 18,
                                              color: AppColors.kBlack.withOpacity(.5),
                                              fontFamily: 'Baloo2Regular',
                                            ),
                                            //suffixIcon: Suffix
                                            //labelText: ,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.kBlue,
                          borderRadius: BorderRadius.circular(30),
                          // radius of 10
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 310,
                      child: Text(
                        Strings.kTypeInfoInBox,
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
              ),
              Positioned(
                bottom: 45,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32),
                  child: AppCommon.appButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EmptyCards()),
                        );
                      },
                      btnText: Strings.kDone,
                      btnColor: AppColors.kBlue,
                      horizontal: 143),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
