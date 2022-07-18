import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';
class ParkedInHistory extends StatefulWidget {
  const ParkedInHistory({Key? key}) : super(key: key);

  @override
  State<ParkedInHistory> createState() => _ParkedInHistoryState();
}

class _ParkedInHistoryState extends State<ParkedInHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0,bottom: 10),
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
            const Text(
              Strings.kYouParkedIn,
              style: TextStyle(
                fontSize: 22,
                color: AppColors.kBlack,
                fontFamily: 'Baloo2SemiBold',
              ),
            ),
            Text(
              'March 21, 2022 at 16:14',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.kBlack.withOpacity(.4),
                fontFamily: 'Baloo2Regular',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
