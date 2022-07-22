import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/ui/edit_vehicle_info.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';
class MyVehicles extends StatefulWidget {
  const MyVehicles({Key? key}) : super(key: key);

  @override
  State<MyVehicles> createState() => _MyVehiclesState();
}

class _MyVehiclesState extends State<MyVehicles> {
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
              SizedBox(
                width: 100,
              ),
              const Text(
                Strings.kMyVehicles,
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.kBlack,
                  fontFamily: 'Baloo2SemiBold',
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditVehicleInfo()),
                    );
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 25, right: 22, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Volkswagen Passat',
                                style: TextStyle(
                                    color: AppColors.kBlack,
                                    fontFamily: 'Baloo2Regular',
                                    fontSize: 16),
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            EditVehicleInfo()),
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
                        height: 20, //height spacing of divider
                        thickness: 1, //thickness of divier line
                        indent: 25, //spacing at the start of divider
                        //endIndent: 25, //spacing at the end of divider
                      )
                    ],
                  ),
                );
              }),
          // Positioned(
          //   bottom: 30,
          //     child: Text(
          //       Strings.kMyVehicles,
          //       style: TextStyle(
          //         fontSize: 18,
          //         color: AppColors.kBlack,
          //         fontFamily: 'Baloo2SemiBold',
          //       ),
          //     ),)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white, size: 30,),
        backgroundColor: AppColors.kBlue,
        //tooltip: '',
        elevation: 5,
        splashColor: Colors.grey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
