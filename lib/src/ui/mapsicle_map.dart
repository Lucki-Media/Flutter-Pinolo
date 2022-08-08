import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pinolo/src/ui/auction_completed_page.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';

class MapsicleMap extends StatefulWidget {
  const MapsicleMap({Key? key}) : super(key: key);

  @override
  State<MapsicleMap> createState() => _MapsicleMapState();
}

class _MapsicleMapState extends State<MapsicleMap> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Completer<GoogleMapController> _controller = Completer();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(17.4435, 78.3772),
    zoom: 14.0,
  );
  List<MarkerId> listMarkerIds = List<MarkerId>.empty(growable: true);
  //final MarkerId markerId = MarkerId("current");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        body: GoogleMap(
          initialCameraPosition: _kGooglePlex,
          onTap: (_) {},
          mapType: MapType.normal,
          markers: Set<Marker>.of(markers.values),
          onMapCreated: (GoogleMapController controler) {
            _controller.complete(controler);

            MarkerId markerId1 = MarkerId("1");
            MarkerId markerId2 = MarkerId("2");
            MarkerId markerId3 = MarkerId("3");

            listMarkerIds.add(markerId1);
            listMarkerIds.add(markerId2);
            listMarkerIds.add(markerId3);

            Marker marker1 = Marker(
                markerId: markerId1,
                position: LatLng(17.4435, 78.3772),
                icon: BitmapDescriptor.defaultMarkerWithHue(
                    BitmapDescriptor.hueCyan),
                infoWindow: InfoWindow(
                    title: "Hytech City",
                    onTap: () {
                      var bottomSheetController = scaffoldKey.currentState!
                          .showBottomSheet((context) => Container(
                                child: getBottomSheet2("17.4435, 78.3772"),
                                height: 550,
                                color: Colors.transparent,
                              ));
                    },
                    snippet: "Snipet Hitech City"));

            Marker marker2 = Marker(
              markerId: markerId2,
              position: LatLng(17.4837, 78.3158),
              icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueGreen),
            );
            Marker marker3 = Marker(
                markerId: markerId3,
                position: LatLng(17.5169, 78.3428),
                infoWindow: InfoWindow(
                    title: "Miyapur", onTap: () {}, snippet: "Miyapur"));

            setState(() {
              markers[markerId1] = marker1;
              markers[markerId2] = marker2;
              markers[markerId3] = marker3;
            });
          },
        ));
  }

  Widget getBottomSheet(String s) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        shadowColor: AppColors.kShadowGrey,
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: AppColors.kWhite,
        //foregroundColor: AppColors.kBlue,
        //centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.user,
                        color: AppColors.kAppBlack.withOpacity(.5),
                        size: 18,
                      ),
                      Text(
                        'Veljko A',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.kAppBlack.withOpacity(.5),
                          fontFamily: 'Baloo2Regular',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.amber,
                        size: 8,
                      ),
                      SizedBox(width: 3,),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.amber,
                        size: 8,
                      ),
                      SizedBox(width: 3,),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.amber,
                        size: 8,
                      ),
                      SizedBox(width: 3,),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.amber,
                        size: 8,
                      ),
                      SizedBox(width: 3,),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.amber,
                        size: 8,
                      ),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  //Navigator.of(context).pop();
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.kGrey,
                  child: Icon(
                    FontAwesomeIcons.envelope,
                    color: AppColors.kAppBlack.withOpacity(.5),
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      '${Strings.kSpotType}:',
                      style: TextStyle(
                          color: AppColors.kBlack,
                          fontFamily: 'Baloo2Medium',
                          fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'assets/images/90deg_dark.png',
                      height: 40,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '${Strings.kVehicle}:',
                      style: TextStyle(
                          color: AppColors.kBlack,
                          fontFamily: 'Baloo2Medium',
                          fontSize: 16),
                    ),
                    Text(
                      'Sedan',
                      style: TextStyle(
                          color: AppColors.kBlack.withOpacity(.9),
                          fontFamily: 'Baloo2Medium',
                          fontSize: 14),
                    ),
                    Image.asset(
                      'assets/images/sedan_car.png',
                      width: 70,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '${Strings.kDistance}:',
                      style: TextStyle(
                          color: AppColors.kBlack,
                          fontFamily: 'Baloo2Medium',
                          fontSize: 16),
                    ),
                    Text(
                      '400m',
                      style: TextStyle(
                          color: AppColors.kBlack.withOpacity(.9),
                          fontFamily: 'Baloo2Medium',
                          fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: AppColors.kDividerGrey, //color of divider
            height: 0, //height spacing of divider
            thickness: 1, //thickness of divier line
            indent: 25, //spacing at the start of divider
            //endIndent: 25, //spacing at the end of divider
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              Strings.kAuctioneers,
              style: TextStyle(
                  color: AppColors.kBlack,
                  fontFamily: 'Baloo2Medium',
                  fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                  height: 50,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${Strings.kAuctionTime}:',
                          style: TextStyle(
                              color: AppColors.kBlack.withOpacity(.5),
                              fontFamily: 'Baloo2Regular',
                              fontSize: 10)),
                      Text('03:18',
                          style: TextStyle(
                              color: AppColors.kBlack,
                              fontFamily: 'Baloo2Regular',
                              fontSize: 16)),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.kBlack.withOpacity(.5),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    // radius of 10
                  )),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                  height: 50,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${Strings.kCurrentPrice}:',
                          style: TextStyle(
                              color: AppColors.kWhite.withOpacity(.8),
                              fontFamily: 'Baloo2Regular',
                              fontSize: 10)),
                      Text('190rsd',
                          style: TextStyle(
                              color: AppColors.kWhite,
                              fontFamily: 'Baloo2Regular',
                              fontSize: 16)),
                    ],
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xffFF0000).withOpacity(0.4),
                          Color(0xffFF0000).withOpacity(0.9),
                        ]),
                    borderRadius: BorderRadius.circular(10),
                    // radius of 10
                  )),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(Strings.kBeFirst,
                style: TextStyle(
                    color: AppColors.kBlack,
                    fontFamily: 'Baloo2Regular',
                    fontSize: 14)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                        height: 60,
                        width: 142,
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 14,
                              child: Icon(
                                Icons.remove,
                                color: AppColors.kOrange,
                              ),
                            ),
                            Text("999 rsd",
                                style: TextStyle(
                                    color: AppColors.kBlack.withOpacity(.7),
                                    fontFamily: 'Baloo2Medium',
                                    fontSize: 14)),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 14,
                              child: Icon(
                                Icons.add,
                                color: AppColors.kOrange,
                              ),
                            ),
                          ],
                        )),
                        decoration: BoxDecoration(
                          color: AppColors.kOrange.withOpacity(.3),
                          borderRadius: BorderRadius.circular(10),
                          // radius of 10
                        )),
                    Text("min. 59 rsd - max. 999 rsd",
                        style: TextStyle(
                            color: AppColors.kBlack.withOpacity(.3),
                            fontFamily: 'Baloo2Regular',
                            fontSize: 12))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      Container(
                          height: 60,
                          width: 180,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Bid For:",
                                  style: TextStyle(
                                      color: AppColors.kWhite,
                                      fontFamily: 'Baloo2Medium',
                                      fontSize: 16)),
                              Text("999 rsd",
                                  style: TextStyle(
                                      color: AppColors.kWhite,
                                      fontFamily: 'Baloo2Regular',
                                      fontSize: 14)),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(10), // radius of 10
                              color: AppColors.kOrange // green as background color
                              )),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Image.asset(
                              'assets/images/Bank_img.png',
                              height: 18,
                            ),
                          ),
                          Text("Pay by Balance",
                              style: TextStyle(
                                  color: AppColors.kBlack.withOpacity(.8),
                                  fontFamily: 'Baloo2Medium',
                                  fontSize: 12))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget getBottomSheet2(String s) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        shadowColor: AppColors.kShadowGrey,
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: AppColors.kWhite,
        //foregroundColor: AppColors.kBlue,
        //centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.user,
                        color: AppColors.kAppBlack.withOpacity(.5),
                        size: 18,
                      ),
                      Text(
                        'Veljko A',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.kAppBlack.withOpacity(.5),
                          fontFamily: 'Baloo2Regular',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.amber,
                        size: 8,
                      ),
                      SizedBox(width: 3,),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.amber,
                        size: 8,
                      ),
                      SizedBox(width: 3,),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.amber,
                        size: 8,
                      ),
                      SizedBox(width: 3,),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.amber,
                        size: 8,
                      ),
                      SizedBox(width: 3,),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.amber,
                        size: 8,
                      ),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  //Navigator.of(context).pop();
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.kGrey,
                  child: Icon(
                    FontAwesomeIcons.envelope,
                    color: AppColors.kAppBlack.withOpacity(.5),
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      '${Strings.kSpotType}:',
                      style: TextStyle(
                          color: AppColors.kBlack,
                          fontFamily: 'Baloo2Medium',
                          fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '${Strings.kVehicle}:',
                      style: TextStyle(
                          color: AppColors.kBlack,
                          fontFamily: 'Baloo2Medium',
                          fontSize: 16),
                    ),
                    Text(
                      'Limozina',
                      style: TextStyle(
                          color: AppColors.kBlack.withOpacity(.5),
                          fontFamily: 'Baloo2Medium',
                          fontSize: 14),
                    ),
                    Image.asset(
                      'assets/images/sedan_car.png',
                      width: 70,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '${Strings.kDistance}:',
                      style: TextStyle(
                          color: AppColors.kBlack,
                          fontFamily: 'Baloo2Medium',
                          fontSize: 16),
                    ),
                    Text(
                      '400m',
                      style: TextStyle(
                          color: AppColors.kBlack.withOpacity(.5),
                          fontFamily: 'Baloo2Medium',
                          fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: AppColors.kDividerGrey, //color of divider
            height: 0, //height spacing of divider
            thickness: 1, //thickness of divier line
            indent: 25, //spacing at the start of divider
            //endIndent: 25, //spacing at the end of divider
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              Strings.kAuctioneers,
              style: TextStyle(
                  color: AppColors.kBlack,
                  fontFamily: 'Baloo2Medium',
                  fontSize: 18),
            ),
          ),
          SizedBox(height: 5),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 150,
                width: 200,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 30,
                        width: 184,
                        child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Veljko A",
                                    style: TextStyle(
                                        color: AppColors.kBlack.withOpacity(.7),
                                        fontFamily: 'Baloo2Medium',
                                        fontSize: 14)),
                              ],
                            )),
                        decoration: BoxDecoration(
                          color: AppColors.kOrange.withOpacity(.05),
                          borderRadius: BorderRadius.circular(5),
                          // radius of 10
                        )),
                  ),
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/clock.png',
                    height: 70,
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    'assets/images/2rsd.png',
                    height: 70,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                        height: 60,
                        width: 142,
                        child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 14,
                                  child: Icon(
                                    Icons.remove,
                                    color: AppColors.kOrange,
                                  ),
                                ),
                                Text("999 rsd",
                                    style: TextStyle(
                                        color: AppColors.kBlack.withOpacity(.7),
                                        fontFamily: 'Baloo2Medium',
                                        fontSize: 14)),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 14,
                                  child: Icon(
                                    Icons.add,
                                    color: AppColors.kOrange,
                                  ),
                                ),
                              ],
                            )),
                        decoration: BoxDecoration(
                          color: AppColors.kOrange.withOpacity(.3),
                          borderRadius: BorderRadius.circular(10),
                          // radius of 10
                        )),
                    Text("min. 59 rsd - max. 999 rsd",
                        style: TextStyle(
                            color: AppColors.kBlack.withOpacity(.3),
                            fontFamily: 'Baloo2Regular',
                            fontSize: 12))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      Container(
                          height: 60,
                          width: 180,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Bid For:",
                                  style: TextStyle(
                                      color: AppColors.kWhite,
                                      fontFamily: 'Baloo2Medium',
                                      fontSize: 16)),
                              Text("999 rsd",
                                  style: TextStyle(
                                      color: AppColors.kWhite,
                                      fontFamily: 'Baloo2Regular',
                                      fontSize: 14)),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(10), // radius of 10
                              color: AppColors.kOrange // green as background color
                          )),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Image.asset(
                              'assets/images/Bank_img.png',
                              height: 18,
                            ),
                          ),
                          Text("Pay by Balance",
                              style: TextStyle(
                                  color: AppColors.kBlack.withOpacity(.8),
                                  fontFamily: 'Baloo2Medium',
                                  fontSize: 12))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
