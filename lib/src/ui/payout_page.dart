import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/ui/add_bank_account.dart';
import 'package:pinolo/src/ui/payout_info.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';

class PayoutPage extends StatefulWidget {
  const PayoutPage({Key? key}) : super(key: key);

  @override
  State<PayoutPage> createState() => _PayoutPageState();
}

class _PayoutPageState extends State<PayoutPage> {

  final items = List<String>.generate(3, (i) => "Item ${i + 1}");

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
                width: 120,
              ),
              const Text(
                Strings.kPayout,
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
                            builder: (context) => PayoutInfo()),
                      );
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 25, right: 22,),
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
                                      'Raiffeisen Banka',
                                      style: TextStyle(
                                          color: AppColors.kBlack.withOpacity(.9),
                                          fontFamily: 'Baloo2Regular',
                                          fontSize: 14),
                                    ),
                                    Text(
                                      '12120392104912049102490',
                                      style: TextStyle(
                                          color: AppColors.kBlack.withOpacity(.4),
                                          fontFamily: 'Baloo2Medium',
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PayoutInfo()),
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
                          height: 10, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          indent: 25, //spacing at the start of divider
                          //endIndent: 25, //spacing at the end of divider
                        )
                      ],
                    ),
                  ),
                );
              }),
          Positioned(
            bottom: 30,
            left: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddBankAccount()),
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
                  Strings.kAddNewBankAcc,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.kBlack,
                    fontFamily: 'Baloo2SemiBold',
                  ),
                ),
                SizedBox(
                  width: 260,
                  child: Text(
                    Strings.kCanAddMultiAcc,
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

}
