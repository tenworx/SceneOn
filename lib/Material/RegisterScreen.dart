// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'package:social_network/Material/MaterialColor.dart';
// import 'package:social_network/Material/MaterialMain.dart';



// class RegisterScreen extends StatefulWidget {
//   const RegisterScreen({Key? key}) : super(key: key);

//   @override
//   _RegisterScreenState createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: Container(
//         decoration: new BoxDecoration(
//           color: mainColor,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(40),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               new Container(
//                 height: 440,
//                 decoration: new BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: new Column(
//                   children: [
//                     new Center(
//                       child: Padding(
//                         padding: const EdgeInsets.all(15),
//                         child: new Text('Register'.toUpperCase() , style: TextStyle(fontSize: 18 , letterSpacing: 2)),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(23),
//                       child: new TextField(
//                         decoration: new InputDecoration(
//                           hintText: 'name',
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(23),
//                       child: new TextField(
//                         decoration: new InputDecoration(
//                           hintText: 'email',
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(23),
//                       child: new TextField(
//                         obscureText: true,
//                         decoration: new InputDecoration(
//                           hintText: 'password',
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(15),
//                       child: new Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(right: 0),
//                             child: new FaIcon(FontAwesomeIcons.facebook , color: appColor),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(right: 0),
//                             child: new FaIcon(FontAwesomeIcons.google , color: appColor),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(right: 0),
//                             child: new FaIcon(FontAwesomeIcons.github , color: appColor),
//                           ),

//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               new SizedBox(height: 20),
//               new Center(
//                 child: new MaterialButton(
//                   onPressed: () {
//                     Get.to(MaterialMain());
//                   },
//                     minWidth: 100,
//                     color:
//                   Colors.white,
//                   child: new Text('register' , style: TextStyle(fontSize: 18)),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );

//   }
// }
