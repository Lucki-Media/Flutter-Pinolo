import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/ui/parked_in_history.dart';
import 'package:pinolo/src/ui/parked_out_history.dart';
import 'package:pinolo/src/ui/payout_history.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';

class MyHistory extends StatefulWidget {
  const MyHistory({Key? key}) : super(key: key);

  @override
  State<MyHistory> createState() => _MyHistoryState();
}

class _MyHistoryState extends State<MyHistory> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
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
                        child:const Text(
                          Strings.kMyHistory,
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
            TabBar(
              labelColor: AppColors.kBlue,
              labelStyle: TextStyle(
                fontSize: 14,
                fontFamily: 'Baloo2Medium',
              ),
              unselectedLabelColor: AppColors.kBlack.withOpacity(.4),
              indicatorColor: AppColors.kBlue,
              tabs: <Widget>[
                Tab(
                  text: Strings.kAll,
                ),
                Tab(
                  text: Strings.kParkedIn,
                ),
                Tab(
                  text: Strings.kParkedOut,
                ),
              ],
            ),
            AppCommon.divider(),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Center(
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PayoutHistory()),
                                );
                              },
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 18.0, top: 18, right: 22, bottom: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                Strings.kPayout,
                                                style: TextStyle(
                                                    color: AppColors.kBlack
                                                        .withOpacity(.9),
                                                    fontFamily: 'Baloo2Medium',
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                'March 14. 22 at 15:34',
                                                style: TextStyle(
                                                    color: AppColors.kBlack
                                                        .withOpacity(.4),
                                                    fontFamily: 'Baloo2Regular',
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 120,
                                        ),
                                        Text("+350 rsd",
                                            style: TextStyle(
                                                color: AppColors.kBlack,
                                                fontFamily: 'Baloo2Regular',
                                                fontSize: 14)),
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        PayoutHistory()),
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
                                    height: 1, //height spacing of divider
                                    thickness: 1, //thickness of divier line
                                    indent: 25, //spacing at the start of divider
                                    //endIndent: 25, //spacing at the end of divider
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                  Center(
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  ParkedInHistory()),
                                );
                              },
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 18.0, top: 18, right: 22, bottom: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                Strings.kParkedIn,
                                                style: TextStyle(
                                                    color: AppColors.kBlack
                                                        .withOpacity(.9),
                                                    fontFamily: 'Baloo2Medium',
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                'March 14. 22 at 15:34',
                                                style: TextStyle(
                                                    color: AppColors.kBlack
                                                        .withOpacity(.4),
                                                    fontFamily: 'Baloo2Regular',
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 120,
                                        ),
                                        Text("+350 rsd",
                                            style: TextStyle(
                                                color: AppColors.kBlack,
                                                fontFamily: 'Baloo2Regular',
                                                fontSize: 14)),
                                        GestureDetector(
                                          onTap:(){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) =>  ParkedInHistory()),
                                            );
                                          },
                                          child: Icon(
                                            FontAwesomeIcons.chevronRight,
                                            size: 22,
                                            color: AppColors.kShadowGrey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: AppColors.kDividerGrey, //color of divider
                                    height: 1, //height spacing of divider
                                    thickness: 1, //thickness of divier line
                                    indent: 25, //spacing at the start of divider
                                    //endIndent: 25, //spacing at the end of divider
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                  Center(
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  ParkedOutHistory()),
                                );
                              },
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 18.0, top: 18, right: 22, bottom: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                Strings.kParkedOut,
                                                style: TextStyle(
                                                    color: AppColors.kBlack
                                                        .withOpacity(.9),
                                                    fontFamily: 'Baloo2Medium',
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                'March 14. 22 at 15:34',
                                                style: TextStyle(
                                                    color: AppColors.kBlack
                                                        .withOpacity(.4),
                                                    fontFamily: 'Baloo2Regular',
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 120,
                                        ),
                                        Text("+350 rsd",
                                            style: TextStyle(
                                                color: AppColors.kBlack,
                                                fontFamily: 'Baloo2Regular',
                                                fontSize: 14)),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) =>  ParkedOutHistory()),
                                            );
                                          },
                                          child: Icon(
                                            FontAwesomeIcons.chevronRight,
                                            size: 22,
                                            color: AppColors.kShadowGrey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: AppColors.kDividerGrey, //color of divider
                                    height: 1, //height spacing of divider
                                    thickness: 1, //thickness of divier line
                                    indent: 25, //spacing at the start of divider
                                    //endIndent: 25, //spacing at the end of divider
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
