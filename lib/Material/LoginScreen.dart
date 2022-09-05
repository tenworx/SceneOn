import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Material/MaterialColor.dart';
import '../Material/MaterialMain.dart';
import '../Material/RegisterScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: mainColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 340,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text('login'.toUpperCase(),
                            style: const TextStyle(
                                fontSize: 18, letterSpacing: 2)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(23),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'email',
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(23),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 21),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  // Get.to(RegisterScreen());
                                });
                              },
                              child: const Text(
                                  'Click if you have not registered')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    // Get.to(MaterialMain());
                  },
                  minWidth: 100,
                  color: Colors.white,
                  child: const Text('login', style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
