import 'package:flutter/material.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_google_places_hoc081098/flutter_google_places_hoc081098.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:google_maps_webservice/places.dart';

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
    target: LatLng(17.4435, 78.3772),
    zoom: 14.0,
  );
  List<MarkerId>listMarkerIds=List<MarkerId>.empty(growable: true);
  //final MarkerId markerId = MarkerId("current");


  String googleApikey = "GOOGLE_MAP_API_KAY";
  GoogleMapController? mapController; //contrller for Google map
  CameraPosition? cameraPosition;
  LatLng startLocation = LatLng(27.6602292, 85.308027);
  String location = "Search Location";


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
                top:10,
                child: InkWell(
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
                        mapController?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: newlatlang, zoom: 17)));
                      }
                    },
                    child:Padding(
                      padding: EdgeInsets.all(15),
                      child: Card(
                        child: Container(
                            padding: EdgeInsets.all(0),
                            width: MediaQuery.of(context).size.width - 40,
                            child: ListTile(
                              title:Text(location, style: TextStyle(fontSize: 18),),
                              trailing: Icon(Icons.search),
                              dense: true,
                            )
                        ),
                      ),
                    )
                )
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

}