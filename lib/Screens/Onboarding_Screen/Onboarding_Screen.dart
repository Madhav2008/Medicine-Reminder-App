import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final double deviceHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: deviceHeight * 0.04,
            ),
            Image.asset(
              '../assets/images/welcome_image.png',
              width: double.infinity,
              height: deviceHeight * 0.4,
            ),
            SizedBox(
              height: deviceHeight * 0.05,
            ),
            Column(
              children: [
                Container(
                  height: deviceHeight * 0.15,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    child:
                        // AutoSizeText(
                        Text(
                      "Be in control of your meds",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ),
                ),
                Container(
                  height: deviceHeight * 0.15,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    child:
                        // AutoSizeText(
                        Text(
                      "An easy-to-use and reliable app that helps you remember to take your meds at the right time",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.grey[600],
                            height: 1.3,
                          ),
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: deviceHeight * 0.03,
            ),
            Container(
              height: deviceHeight * 0.09,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                child: FlatButton(
                  onPressed: () {
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => HomeScreen(),
                    //   ),
                    // );
                  },
                  color: Theme.of(context).primaryColor,
                  child: Center(
                    child: Text(
                      "Get started now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
