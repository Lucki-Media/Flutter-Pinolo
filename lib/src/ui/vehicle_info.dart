import 'package:flutter/material.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class VehicleInfo extends StatefulWidget {
  const VehicleInfo({Key? key}) : super(key: key);

  @override
  State<VehicleInfo> createState() => _VehicleInfoState();
}

class _VehicleInfoState extends State<VehicleInfo> {

  TextEditingController VehicleColorController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                const Text(
                  Strings.kSignUp,
                  style: TextStyle(
                    fontSize: 22,
                    color: AppColors.kBlack,
                    fontFamily: 'Baloo2SemiBold',
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
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
                  controller: VehicleColorController,
                  style: AppCommon.fieldTextStyle(),
                  decoration: AppCommon.textFiledDecoration(
                      hintText: Strings.kChooseVehicleColor,
                      Suffix: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                             // barrierColor: AppColors.fCreamDark.withOpacity(.8),
                              builder: (BuildContext context) {
                                return BlockPicker(
                                  pickerColor: Colors.red,
                                  layoutBuilder: (context, colors, child) {
                                    return SizedBox(
                                      width: 100,
                                      height: 300,
                                      child: GridView.count(
                                        crossAxisCount: 6,
                                        crossAxisSpacing: 5,
                                        mainAxisSpacing: 5,
                                        children: [for (Color color in colors) child(color)],
                                      ),
                                    );
                                  },
                                  onColorChanged: (Color color){
                                    // setState(
                                    //     (){
                                    //       VehicleColorController..text = color.toString();
                                    //     }
                                    // );
                                    print(color);
                                    Navigator.pop(context);//on color picked
                                  },
                                );
                              },
                            );
                          },
                          icon: Icon(
                            Icons.circle,
                            size: 35,
                            color: Colors.red,
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
                  style: AppCommon.fieldTextStyle(),
                  decoration: AppCommon.textFiledDecoration(
                      hintText: Strings.kEnterRegiNo),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 35,
            child: Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: AppColors.kGrey,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: AppColors.kGrey,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: AppColors.kGrey,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: AppColors.kBlue,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VehicleInfo()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 140),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      textStyle: const TextStyle(
                          fontFamily: 'Baloo2SemiBold',
                          fontSize: 16,
                          color: AppColors.kWhite),
                      primary: AppColors.kBlue,
                    ),
                    //icon: Icon(Icons.add, size: 18),
                    child: const Text(Strings.kFinish),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
    ;
  }
}
