import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/ui/edit_vehicle_info.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';

class MyVehicles extends StatefulWidget {
  const MyVehicles({Key? key}) : super(key: key);

  @override
  State<MyVehicles> createState() => _MyVehiclesState();
}

class _MyVehiclesState extends State<MyVehicles> {
  final TextEditingController _VehicleMakeController = TextEditingController();
  final TextEditingController _VehicleModelController = TextEditingController();
  final TextEditingController _VehicleBodyController = TextEditingController();
  final TextEditingController _VehicleRegiNoController =
      TextEditingController();
  TextEditingController _VehicleColorController = TextEditingController();
  Color currentColor = Color(0xff443a49);
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
                            Strings.kMyVehicles,
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
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (builder) {
                        return AddVehiclePopUp();
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
                  Strings.kAddNewVehicle,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.kBlack,
                    fontFamily: 'Baloo2SemiBold',
                  ),
                ),
                SizedBox(
                  width: 310,
                  child: Text(
                    Strings.kYouCanEnter,
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

  Widget AddVehiclePopUp() {
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
                        child: const Text(
                          '+${Strings.kAddNewVehicle}',
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            Strings.kMake,
                            textAlign: TextAlign.center,
                            style: AppCommon.labelTextStyle(),
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: _VehicleMakeController,
                        style: AppCommon.fieldTextStyle(),
                        decoration: AppCommon.textFiledDecoration(
                            hintText: Strings.kChooseVehicleMake),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            Strings.kModel,
                            textAlign: TextAlign.center,
                            style: AppCommon.labelTextStyle(),
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: _VehicleModelController,
                        style: AppCommon.fieldTextStyle(),
                        decoration: AppCommon.textFiledDecoration(
                            hintText: Strings.kChooseVehicleModel),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            Strings.kBody,
                            textAlign: TextAlign.center,
                            style: AppCommon.labelTextStyle(),
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: _VehicleBodyController,
                        style: AppCommon.fieldTextStyle(),
                        decoration: AppCommon.textFiledDecoration(
                            hintText: Strings.kChooseVehicleBody),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            Strings.kColor,
                            textAlign: TextAlign.center,
                            style: AppCommon.labelTextStyle(),
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: _VehicleColorController,
                        style: AppCommon.fieldTextStyle(),
                        decoration: AppCommon.textFiledDecoration(
                            hintText: Strings.kChooseVehicleColor,
                            Suffix: IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    barrierColor: Colors.transparent,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30.0))),
                                        content: BlockPicker(
                                          pickerColor: currentColor,
                                          layoutBuilder:
                                              (context, colors, child) {
                                            return Container(
                                              //color: Colors.white,
                                              width: 400,
                                              height: 175,
                                              child: GridView.count(
                                                crossAxisCount: 6,
                                                crossAxisSpacing: 5,
                                                mainAxisSpacing: 5,
                                                children: [
                                                  for (Color color in colors)
                                                    child(color)
                                                ],
                                              ),
                                            );
                                          },
                                          onColorChanged: (Color color) {
                                            setState(
                                                () => currentColor = color);
                                            print(color);
                                            Navigator.pop(
                                                context); //on color picked
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                                icon: Icon(
                                  Icons.circle,
                                  size: 35,
                                  color: currentColor,
                                ))),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            Strings.kRegiNumber,
                            textAlign: TextAlign.center,
                            style: AppCommon.labelTextStyle(),
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: _VehicleRegiNoController,
                        style: AppCommon.fieldTextStyle(),
                        decoration: AppCommon.textFiledDecoration(
                            hintText: Strings.kEnterRegiNo),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 185,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32),
                  child: AppCommon.appButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => MainMap()),
                        // );
                      },
                      btnText: Strings.kDone,
                      btnColor: AppColors.kBlue,
                      horizontal: 142),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
