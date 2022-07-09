import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';
class MyBids extends StatefulWidget {
  const MyBids({Key? key}) : super(key: key);

  @override
  State<MyBids> createState() => _MyBidsState();
}

class _MyBidsState extends State<MyBids> {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Completer<GoogleMapController> _controller = Completer();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(17.4435, 78.3772),
    zoom: 14.0,
  );
  List<MarkerId>listMarkerIds=List<MarkerId>.empty(growable: true);
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
        body: Stack(
          children: [
            GoogleMap(initialCameraPosition: _kGooglePlex,

              onTap: (_){

              },
              mapType: MapType.normal,
              markers: Set<Marker>.of(markers.values),

              onMapCreated: (GoogleMapController controler){
                _controller.complete(controler);

                MarkerId markerId1 = MarkerId("1");
                MarkerId markerId2 = MarkerId("2");
                MarkerId markerId3 = MarkerId("3");

                listMarkerIds.add(markerId1);
                listMarkerIds.add(markerId2);
                listMarkerIds.add(markerId3);


                Marker marker1=Marker(
                    markerId: markerId1,
                    position: LatLng(17.4435, 78.3772),
                    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),infoWindow: InfoWindow(
                    title: "Hytech City",onTap: (){

                  // var  bottomSheetController=scaffoldKey.currentState!.showBottomSheet((context) => Container(
                  //   child: getBottomSheet("17.4435, 78.3772"),
                  //   height: 250,
                  //   color: Colors.transparent,
                  // ));

                },snippet: "Snipet Hitech City"
                ));

                Marker marker2=Marker(markerId: markerId2,position: LatLng(17.4837, 78.3158),
                  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),);
                Marker marker3=Marker(markerId: markerId3,position: LatLng(17.5169, 78.3428),
                    infoWindow: InfoWindow(
                        title: "Miyapur",onTap: (){},snippet: "Miyapur"
                    ));

                setState(() {
                  markers[markerId1]=marker1;
                  markers[markerId2]=marker2;
                  markers[markerId3]=marker3;
                });
              },

            ),
            Positioned(
              bottom: 35,
              //left: 30,
              child: Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: AppCommon.appButton(
                    onPressed: (){
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (builder) {
                          return MyBidsPopUp();
                        },
                      );
                    },
                    btnText:  Strings.kMyBids,
                    btnColor:AppColors.kBlue,
                  horizontal: 135
                ),
              ),
            )
          ],
        )
    );
  }

  }

Widget MyBidsPopUp(){
  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            shadowColor: AppColors.kShadowGrey,
            elevation: 5,
            leadingWidth:35,
            leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: CircleAvatar(
                //radius: 10.0,
                backgroundColor: AppColors.kGrey,
                child: Icon(Icons.close, color: AppColors.kBlack),
              ),
            ),
            backgroundColor:AppColors.kWhite,
            //foregroundColor: AppColors.kBlue,
            centerTitle: true,
            title:  const Text(
            Strings.kMyBids,
            style: TextStyle(
              fontSize: 18,
              color: AppColors.kBlack,
              fontFamily: 'Baloo2SemiBold',
            ),
          ),
            bottom:  TabBar(
              labelColor: AppColors.kBlue,
              labelStyle: TextStyle(
                fontSize: 16,
                fontFamily: 'Baloo2Medium',
              ),
              unselectedLabelColor: AppColors.kBlack.withOpacity(.4),
              indicatorColor: AppColors.kBlue,
              tabs: <Widget>[
                Tab(
                  text: Strings.kAll,
                ),
                Tab(
                  text: Strings.kWinning,
                ),
                Tab(
                  text: Strings.kLosing,
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                          leading: const Icon(Icons.list),
                          trailing: const Text(
                            "GFG",
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          ),
                          title: Text("List item $index"));
                    }),
              ),
              Center(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                          leading: const Icon(Icons.list),
                          trailing: const Text(
                            "GFG",
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          ),
                          title: Text("List item $index"));
                    }),
              ),
              Center(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                          leading: const Icon(Icons.list),
                          trailing: const Text(
                            "GFG",
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          ),
                          title: Text("List item $index"));
                    }),
              ),
            ],
          ),
        ),
      );
    },
  );
}