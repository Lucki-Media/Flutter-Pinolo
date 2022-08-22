import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/app_common.dart';
import 'package:pinolo/src/utils/strings.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class EditVehicleInfo extends StatefulWidget {
  const EditVehicleInfo({Key? key}) : super(key: key);

  @override
  State<EditVehicleInfo> createState() => _EditVehicleInfoState();
}

class _EditVehicleInfoState extends State<EditVehicleInfo> {

  final TextEditingController _VehicleMakeController = TextEditingController();
  final TextEditingController _VehicleModelController = TextEditingController();
  final TextEditingController _VehicleBodyController = TextEditingController();
  final TextEditingController _VehicleRegiNoController = TextEditingController();
  TextEditingController _VehicleColorController = TextEditingController();
  Color currentColor = Color(0xff443a49);

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
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: const Text(
                      'Volkswagen Passat',
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
                          FontAwesomeIcons.arrowLeft,
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
        child: Container(
          height: MediaQuery.of(context).size.height-100,
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
                                          borderRadius: BorderRadius.all(Radius.circular(30.0))),
                                      content: BlockPicker(
                                        pickerColor: currentColor,
                                        layoutBuilder: (context, colors, child) {
                                          return Container(
                                            //color: Colors.white,
                                            width: 400,
                                            height: 175,
                                            child: GridView.count(
                                              crossAxisCount: 6,
                                              crossAxisSpacing: 5,
                                              mainAxisSpacing: 5,
                                              children: [for (Color color in colors) child(color)],
                                            ),
                                          );
                                        },
                                        onColorChanged: (Color color){
                                          setState(() => currentColor = color);
                                          print(color);
                                          Navigator.pop(context);//on color picked
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
              Spacer(),
              // SizedBox(height: 190,),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32,bottom: 30),
                child: AppCommon.appButton(
                    onPressed: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => MainMap()),
                      // );
                    },
                    btnText:Strings.kSave,
                    btnColor:AppColors.kBlue,
                    horizontal: 145 ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
