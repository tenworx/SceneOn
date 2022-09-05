import 'package:flutter/material.dart';
import '../screens/posts.dart';
import '../screens/stories.dart';
import '../Material/MaterialColor.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

int columnCount = 0;
int position = 3;
Duration duration = const Duration(seconds: 1);
Duration milliDuration = const Duration(milliseconds: 800);
double horizontalOffset = 100;

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.only(top: 30, bottom: 0),
                child: Text('Social Network'.toUpperCase(),
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3)),
              ),
            ),
            const SizedBox(height: 20),
            const Stories(),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Posts(),
            ),
          ],
        ),
      ),
    );
  }
}
