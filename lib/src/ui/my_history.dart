import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        appBar: AppBar(
          shadowColor: AppColors.kShadowGrey,
          elevation: 5,
          titleSpacing:4,
          leadingWidth: 55,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: CircleAvatar(
              //radius: 10.0,
              backgroundColor: AppColors.kGrey,
              child: Icon(FontAwesomeIcons.arrowLeft, color: AppColors.kBlack, size: 18,),
            ),
          ),
          backgroundColor: AppColors.kWhite,
          //foregroundColor: AppColors.kBlue,
          centerTitle: true,
          title: const Text(
            Strings.kMyHistory,
            style: TextStyle(
              fontSize: 18,
              color: AppColors.kBlack,
              fontFamily: 'Baloo2SemiBold',
            ),
          ),
          bottom: TabBar(
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
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) =>  AuctionCompletedPage()),
                        // );
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0,top: 18, right: 22,bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Strings.kPayout,
                                        style: TextStyle(
                                            color: AppColors.kBlack.withOpacity(.9),
                                            fontFamily: 'Baloo2Medium',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        'March 14. 22 at 15:34',
                                        style: TextStyle(
                                            color:
                                            AppColors.kBlack.withOpacity(.4),
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
                                Icon(FontAwesomeIcons.chevronRight,size: 22,color:AppColors.kShadowGrey ,),
                              ],

                            ),
                          ),
                          Divider(
                            color: AppColors.kBlack.withOpacity(.2), //color of divider
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
            Center(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) =>  AuctionCompletedPage()),
                        // );
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0,top: 18, right: 22,bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Strings.kParkedIn,
                                        style: TextStyle(
                                            color: AppColors.kBlack.withOpacity(.9),
                                            fontFamily: 'Baloo2Medium',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        'March 14. 22 at 15:34',
                                        style: TextStyle(
                                            color:
                                            AppColors.kBlack.withOpacity(.4),
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
                                Icon(FontAwesomeIcons.chevronRight,size: 22,color:AppColors.kShadowGrey ,),
                              ],

                            ),
                          ),
                          Divider(
                            color: AppColors.kBlack.withOpacity(.2), //color of divider
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
            Center(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) =>  AuctionCompletedPage()),
                        // );
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0,top: 18, right: 22,bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Strings.kParkedOut,
                                        style: TextStyle(
                                            color: AppColors.kBlack.withOpacity(.9),
                                            fontFamily: 'Baloo2Medium',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        'March 14. 22 at 15:34',
                                        style: TextStyle(
                                            color:
                                            AppColors.kBlack.withOpacity(.4),
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
                                Icon(FontAwesomeIcons.chevronRight,size: 22,color:AppColors.kShadowGrey ,),
                              ],

                            ),
                          ),
                          Divider(
                            color: AppColors.kBlack.withOpacity(.2), //color of divider
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
          ],
        ),
      ),
    );
  }
}
