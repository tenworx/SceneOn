import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Material/LoginScreen.dart';
import '../Material/MaterialColor.dart';
import '../Material/MaterialMain.dart';
import '../Material/RegisterScreen.dart';

class MaterialHome extends StatefulWidget {
  const MaterialHome({Key? key}) : super(key: key);

  @override
  _MaterialHomeState createState() => _MaterialHomeState();
}

class _MaterialHomeState extends State<MaterialHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new SafeArea(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: new Text(
                'Social Network'.toUpperCase(),
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: new MaterialButton(
                  onPressed: () {
                    Get.to(LoginScreen());
                  },
                  minWidth: 300,
                  height: 50,
                  color: appColor,
                  child: new Text('login'.toUpperCase(),
                      style: TextStyle(
                          letterSpacing: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
            ),
            Center(
              child: new MaterialButton(
                onPressed: () {
                  // Get.to(RegisterScreen());
                },
                minWidth: 300,
                height: 50,
                color: mainColor,
                child: new Text('register'.toUpperCase(),
                    style: TextStyle(
                        letterSpacing: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
