import 'package:flutter/material.dart';
import 'package:pinolo/src/utils/app_colors.dart';
import 'package:pinolo/src/utils/strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                Strings.kHello,
                style: TextStyle(
                  fontSize: 27,
                  color: AppColors.kBlack,
                  fontFamily: 'Baloo2SemiBold',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
               SizedBox(
                width: 286,
                child: Text(
                  Strings.kAlreadyAcc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.kBlack.withOpacity(.4),
                    fontFamily: 'Baloo2Regular',
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/images/welcome_logo.png',
                height: 300,
              ),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 35,
          //left: 30,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (builder) {
                      return LogInPopUp();
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 138),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  textStyle: const TextStyle(
                      fontFamily: 'Baloo2SemiBold',
                      fontSize: 16,
                      color: AppColors.kWhite),
                  primary: AppColors.kOrange,
                ),
                //icon: Icon(Icons.add, size: 18),
                child: const Text(Strings.kLogIn),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const FirstInfoSlider()),
                  // );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 133),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  textStyle: const TextStyle(
                      fontFamily: 'Baloo2SemiBold',
                      fontSize: 16,
                      color: AppColors.kWhite),
                  primary: AppColors.kBlue,
                ),
                //icon: Icon(Icons.add, size: 18),
                child: const Text(Strings.kSignUp),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget LogInPopUp() {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: CircleAvatar(
                    radius: 16.0,
                    backgroundColor: AppColors.kGrey,
                    child: Icon(Icons.close, color: AppColors.kBlack),
                  ),
                ),
                SizedBox(
                  width: 105,
                ),
                const Text(
                  Strings.kLogIn,
                  style: TextStyle(
                    fontSize: 22,
                    color: AppColors.kBlack,
                    fontFamily: 'Baloo2SemiBold',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 210,
              child: Text(
                Strings.kLoginWith,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.kBlack.withOpacity(.4),
                  fontFamily: 'Baloo2Regular',
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  Strings.kEmail,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.kBlack.withOpacity(.9),
                    fontFamily: 'Baloo2Medium',
                  ),
                ),
              ),
            ),
            TextFormField(
              style:TextStyle(fontSize: 14,
                color: AppColors.kBlack,
                fontFamily: 'Baloo2Regular', ) ,
              decoration:  InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.kBlue, width: 1.0),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.kBlack.withOpacity(0.2), width: 1.0),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                hintText: Strings.kEnterEmail,
                hintStyle:TextStyle(fontSize: 14,
                  color: AppColors.kBlack.withOpacity(.2),
                  fontFamily: 'Baloo2Regular', ),
                //labelText: 'e-mail',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  Strings.kPassword,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.kBlack.withOpacity(.9),
                    fontFamily: 'Baloo2Medium',
                  ),
                ),
              ),
            ),
            TextFormField(
              obscureText: true,
              style:TextStyle(fontSize: 14,
                color: AppColors.kBlack,
                fontFamily: 'Baloo2Regular', ) ,
              decoration:  InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.kBlue, width: 1.0),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.kBlack.withOpacity(0.2), width: 1.0),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                  hintText: Strings.kEnterPassword,
                hintStyle:TextStyle(fontSize: 14,
                  color: AppColors.kBlack.withOpacity(.2),
                  fontFamily: 'Baloo2Regular', ),
                //labelText: 'Password',

              ),
            ),
          ],
        ),
      ),
    );
  }
}
