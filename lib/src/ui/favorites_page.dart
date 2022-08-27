import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/ui/add_new_favorite.dart';
import 'package:pinolo/src/ui/edit_favorites.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';
class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {

  final items = List<String>.generate(3, (i) => "Item ${i + 1}");
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
                          child:const Text(
                            Strings.kFavorites,
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
              Container(
                height: MediaQuery.of(context).size.height -280,
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
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => EditVehicleInfo()),
                            // );
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 22.0, top: 25, right: 22, bottom: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/home.png',
                                          height: 25,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Home',
                                                style: TextStyle(
                                                    color: AppColors.kBlack.withOpacity(.9),
                                                    fontFamily: 'Baloo2Medium',
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                'Obilicev venac 18 - 20',
                                                style: TextStyle(
                                                    color: AppColors.kBlack.withOpacity(.3),
                                                    fontFamily: 'Baloo2Medium',
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5.0),
                                      child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      EditFavorites()),
                                            );
                                          },
                                          child: Image.asset(
                                            'assets/images/edit.png',
                                            height: 16,
                                          ),),
                                    ),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  AddNewFavorite()),
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
                  Strings.kAddNewFavorite,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.kBlack,
                    fontFamily: 'Baloo2SemiBold',
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: Text(
                    Strings.kYouCanCreateMultiFav,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
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
}
