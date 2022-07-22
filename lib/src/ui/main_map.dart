import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/ui/my_bids.dart';
import 'package:pinolo/src/ui/my_history.dart';
import 'package:pinolo/src/ui/my_profile.dart';
import 'package:pinolo/src/ui/my_vehicles.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_google_places_hoc081098/flutter_google_places_hoc081098.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:location/location.dart';

class MainMap extends StatefulWidget {
  const MainMap({Key? key}) : super(key: key);

  @override
  State<MainMap> createState() => _MainMapState();
}

class _MainMapState extends State<MainMap> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Completer<GoogleMapController> _controller = Completer();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(27.6602292, 85.308027),
    zoom: 14.0,
  );
  List<MarkerId>listMarkerIds=List<MarkerId>.empty(growable: true);
  //final MarkerId markerId = MarkerId("current");


  String googleApikey = "AIzaSyAbhjCmnqGl_yvBV9U1EoQHUY1Ldsetr24";
  GoogleMapController? mapController; //contrller for Google map
  //CameraPosition? cameraPosition;
  //LatLng startLocation = LatLng(27.6602292, 85.308027);
  String location = "Where do you want to go?";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        key: scaffoldKey,
       // appBar: AppBar(leading: Icon(Icons.map),backgroundColor: Colors.blue,title: Text("Google Maps With Markers"),),
        body: Stack(
          children: [
            GoogleMap(initialCameraPosition: _kGooglePlex,
              myLocationEnabled: true,
              onTap: (_){

              },
              mapType: MapType.normal,
              markers: Set<Marker>.of(markers.values),

              onMapCreated: (GoogleMapController controler){
                //_controller.complete(controler);
                mapController = controler;

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

                  var  bottomSheetController=scaffoldKey.currentState!.showBottomSheet((context) => Container(
                    child: getBottomSheet("17.4435, 78.3772"),
                    height: 250,
                    color: Colors.transparent,
                  ));

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
            //search autoconplete input
            Positioned(  //search input bar
                top:35,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (builder) {
                                return ProfilePopUp();
                              },
                            );
                          },
                          icon:
                            Image.asset('assets/images/user_icon.png',height: 35,),
                            ),
                      InkWell(
                          onTap: () async {
                            var place = await PlacesAutocomplete.show(
                                context: context,
                                apiKey: googleApikey,
                                mode: Mode.overlay,
                                types: [],
                                strictbounds: false,
                                components: [Component(Component.country, 'np')],
                                //google_map_webservice package
                                onError: (err){
                                  print(err);
                                }
                            );

                            if(place != null){
                              setState(() {
                                location = place.description.toString();
                              });

                              //form google_maps_webservice package
                              final plist = GoogleMapsPlaces(apiKey:googleApikey,
                                apiHeaders: await GoogleApiHeaders().getHeaders(),
                                //from google_api_headers package
                              );
                              String placeid = place.placeId ?? "0";
                              final detail = await plist.getDetailsByPlaceId(placeid);
                              final geometry = detail.result.geometry!;
                              final lat = geometry.location.lat;
                              final lang = geometry.location.lng;
                              var newlatlang = LatLng(lat, lang);

                              //move map camera to selected place with animation
                              mapController?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: newlatlang, zoom: 14)));
                            }
                          },
                          child:Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.kBlue.withOpacity(.25),
                                // border: Border(
                                //   left: BorderSide(
                                //     color: Colors.green,
                                //     width: 3,
                                //   ),
                                // ),
                              ),
                            //color: AppColors.kBlue.withOpacity(.25),
                              padding: EdgeInsets.all(0),
                              width: MediaQuery.of(context).size.width - 110,
                              //height: 32,
                              child: ListTile(
                                title:Text(location, style: TextStyle(fontSize: 18),),
                                //trailing: Icon(Icons.search),
                                dense: true,
                              )
                          ),
                      ),
                      IconButton(
                        onPressed: () {
                        },
                        icon:
                        Image.asset('assets/images/up_down_icon.png',height: 35,),
                      ),
                    ],
                  ),
                ),
            ),
            Positioned(
              bottom: 35,
              child: Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: AppCommon.appButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyBids()),
                      );
                    },
                    btnText:Strings.kParkOut,
                    btnColor:AppColors.kOrange,
                    horizontal: 130 ),
              ),
            )

          ],
        )
    );
  }

  Widget getBottomSheet(String s)
  {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 32),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Hytech City Public School \n CBSC",style: TextStyle(
                          color: Colors.white,
                          fontSize: 14
                      ),),
                      SizedBox(height: 5,),
                      Row(children: <Widget>[

                        Text("4.5",style: TextStyle(
                            color: Colors.white,
                            fontSize: 12
                        )),
                        Icon(Icons.star,color: Colors.yellow,),
                        SizedBox(width: 20,),
                        Text("970 Folowers",style: TextStyle(
                            color: Colors.white,
                            fontSize: 14
                        ))
                      ],),
                      SizedBox(height: 5,),
                      Text("Memorial Park",style: TextStyle(
                          color: Colors.white,
                          fontSize: 14
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[SizedBox(width: 20,),Icon(Icons.map,color: Colors.blue,),SizedBox(width: 20,),Text("$s")],
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[SizedBox(width: 20,),Icon(Icons.call,color: Colors.blue,),SizedBox(width: 20,),Text("040-123456")],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topRight,

            child: FloatingActionButton(
                child: Icon(Icons.navigation),
                onPressed: (){

                }),
          ),
        )
      ],

    );
  }
  Widget ProfilePopUp() {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xffFEBA3D), Color(0xffED8116), Color(0xffEA780F)])),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: CircleAvatar(
                              radius: 16.0,
                              backgroundColor: AppColors.kGrey,
                              child: Icon(Icons.close, color: AppColors.kBlack),
                            ),
                          ),
                          const Text(
                            'Veljko Arsic',
                            style: TextStyle(
                              fontSize: 24,
                              color: AppColors.kWhite,
                              fontFamily: 'Baloo2SemiBold',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  MyProfile()),
                              );
                            },
                            child: CircleAvatar(
                              radius: 16.0,
                              backgroundColor: AppColors.kGrey,
                              child: Image.asset('assets/images/edit_pen.png',height: 18,),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        Strings.kBalance,
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.kWhite.withOpacity(.8),
                          fontFamily: 'Baloo2Medium',
                        ),
                      ),
                      Text(
                        '1290,00 ${Strings.krsd}',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.kWhite,
                          fontFamily: 'Baloo2Bold',
                        ),
                      ),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      padding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      textStyle: const TextStyle(
                          fontFamily: 'Baloo2ExtraBold',
                          fontSize: 20,
                          color: AppColors.kWhite),
                      primary: AppColors.kOrange,
                    ),
                    //icon: Icon(Icons.add, size: 18),
                    child:  Text(Strings.kPayout),
                  ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 250,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height-250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    ),
                    color: AppColors.kWhite,
                ),

                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0,left: 25),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  MyVehicles()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/car.png',height: 22,),
                                  SizedBox(width: 10,),
                                  const Text(
                                    Strings.kMyVehicles,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: AppColors.kBlack,
                                      fontFamily: 'Baloo2Regular',
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  MyVehicles()),
                                    );
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.chevronRight,
                                    size: 22,
                                    color: AppColors.kDividerGrey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: AppColors.kDividerGrey, //color of divider
                          height: 10, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          indent:2, //spacing at the start of divider
                          //endIndent: 25, //spacing at the end of divider
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/credit_card.png',height: 20,),
                                SizedBox(width: 10,),
                                const Text(
                                  Strings.kMyCards,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: AppColors.kBlack,
                                    fontFamily: 'Baloo2Regular',
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) =>  ParkedOutHistory()),
                                  // );
                                },
                                child: Icon(
                                  FontAwesomeIcons.chevronRight,
                                  size: 22,
                                  color: AppColors.kDividerGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: AppColors.kDividerGrey, //color of divider
                          height: 10, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          indent:2, //spacing at the start of divider
                          //endIndent: 25, //spacing at the end of divider
                        ),
                        SizedBox(height: 15,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  MyHistory()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/history.png',height: 18,),
                                  SizedBox(width: 10,),
                                  const Text(
                                    Strings.kMyHistory,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: AppColors.kBlack,
                                      fontFamily: 'Baloo2Regular',
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  MyHistory()),
                                    );
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.chevronRight,
                                    size: 22,
                                    color: AppColors.kDividerGrey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: AppColors.kDividerGrey, //color of divider
                          height: 10, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          indent:2, //spacing at the start of divider
                          //endIndent: 25, //spacing at the end of divider
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/setting.png',height: 20,),
                                SizedBox(width: 10,),
                                const Text(
                                  Strings.kSettings,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: AppColors.kBlack,
                                    fontFamily: 'Baloo2Regular',
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) =>  ParkedOutHistory()),
                                  // );
                                },
                                child: Icon(
                                  FontAwesomeIcons.chevronRight,
                                  size: 22,
                                  color: AppColors.kDividerGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: AppColors.kDividerGrey, //color of divider
                          height: 10, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          indent:2, //spacing at the start of divider
                          //endIndent: 25, //spacing at the end of divider
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/tree_nature.png',height: 22,),
                                SizedBox(width: 8,),
                                const Text(
                                  Strings.kTreePlanting,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: AppColors.kBlack,
                                    fontFamily: 'Baloo2Regular',
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) =>  ParkedOutHistory()),
                                  // );
                                },
                                child: Icon(
                                  FontAwesomeIcons.chevronRight,
                                  size: 22,
                                  color: AppColors.kDividerGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: AppColors.kDividerGrey, //color of divider
                          height: 10, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          indent:2, //spacing at the start of divider
                          //endIndent: 25, //spacing at the end of divider
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/term_condition.png',height: 20,),
                                SizedBox(width: 10,),
                                Text(
                                  Strings.kTermsConditions,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: AppColors.kBlack.withOpacity(.5),
                                    fontFamily: 'Baloo2Regular',
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) =>  ParkedOutHistory()),
                                  // );
                                },
                                child: Icon(
                                  FontAwesomeIcons.chevronRight,
                                  size: 22,
                                  color: AppColors.kDividerGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: AppColors.kDividerGrey, //color of divider
                          height: 10, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          indent:2, //spacing at the start of divider
                          //endIndent: 25, //spacing at the end of divider
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/privacy.png',height: 22,),
                                SizedBox(width: 10,),
                                Text(
                                  Strings.kPrivacyPolicy,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: AppColors.kBlack.withOpacity(.5),
                                    fontFamily: 'Baloo2Regular',
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) =>  ParkedOutHistory()),
                                  // );
                                },
                                child: Icon(
                                  FontAwesomeIcons.chevronRight,
                                  size: 22,
                                  color: AppColors.kDividerGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: AppColors.kDividerGrey, //color of divider
                          height: 10, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          indent:2, //spacing at the start of divider
                          //endIndent: 25, //spacing at the end of divider
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/faq.png',height: 22,),
                                SizedBox(width: 10,),
                                Text(
                                  Strings.kFAQ,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: AppColors.kBlack.withOpacity(.5),
                                    fontFamily: 'Baloo2Regular',
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) =>  ParkedOutHistory()),
                                  // );
                                },
                                child: Icon(
                                  FontAwesomeIcons.chevronRight,
                                  size: 22,
                                  color: AppColors.kDividerGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: AppColors.kDividerGrey, //color of divider
                          height: 10, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          indent:2, //spacing at the start of divider
                          //endIndent: 25, //spacing at the end of divider
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/support.png',height: 22,),
                                SizedBox(width: 10,),
                                Text(
                                  Strings.kSupport,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: AppColors.kBlack.withOpacity(.5),
                                    fontFamily: 'Baloo2Regular',
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) =>  ParkedOutHistory()),
                                  // );
                                },
                                child: Icon(
                                  FontAwesomeIcons.chevronRight,
                                  size: 22,
                                  color: AppColors.kDividerGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: AppColors.kDividerGrey, //color of divider
                          height: 10, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          indent:2, //spacing at the start of divider
                          //endIndent: 25, //spacing at the end of divider
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/logout.png',height: 22,),
                                SizedBox(width: 10,),
                                Text(
                                  Strings.kLogOut,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: AppColors.kBlack.withOpacity(.5),
                                    fontFamily: 'Baloo2Regular',
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) =>  ParkedOutHistory()),
                                  // );
                                },
                                child: Icon(
                                  FontAwesomeIcons.chevronRight,
                                  size: 22,
                                  color: AppColors.kDividerGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: AppColors.kDividerGrey, //color of divider
                          height: 10, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          indent:2, //spacing at the start of divider
                          //endIndent: 25, //spacing at the end of divider
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}