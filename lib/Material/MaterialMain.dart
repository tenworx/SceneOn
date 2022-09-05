// import 'package:flutter/material.dart';
// import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
// import 'package:social_network/Home/home.dart';
// import 'package:social_network/Material/MaterialColor.dart';
// import 'package:social_network/Post/post.dart';
// import 'package:social_network/Profile/profile.dart';
// import 'package:social_network/Search/search.dart';
// import 'package:social_network/Notification/notification.dart';



// class MaterialMain extends StatefulWidget {
//   const MaterialMain({Key? key}) : super(key: key);

//   @override
//   _MaterialMainState createState() => _MaterialMainState();
// }

// class _MaterialMainState extends State<MaterialMain> {
//   late int selectedTab = 1;
//   late PageController pageController;
//   @override
//   void initState() {
//     super.initState();
//     pageController = PageController(initialPage: selectedTab);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       backgroundColor: Colors.white,
//       body: PageView(
//         controller: pageController,
//           onPageChanged: (index) {
//           setState(() {
//             selectedTab = index;
//           });
//           },
//           children: [
//             Search(),
//             Home(),
//             Post(),
//             Notifications(),
//             Profile(),
//           ],
//         ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(0),
//         child: new SalomonBottomBar(
//           selectedItemColor: Colors.blueAccent,
//           onTap: (index) {
//             setState(() {
//               pageController.animateToPage(
//               index,
//                   duration: Duration(milliseconds: 300),
//                   curve: Curves.easeIn,
//               );
//             });
//           },
//           currentIndex: selectedTab,
//           items: [
//             new SalomonBottomBarItem(
//               title: new Text('SEARCH'),
//               icon: Icon(Icons.search_outlined),
//             ),
//             new SalomonBottomBarItem(
//               title: new Text('HOME'),
//               icon: Icon(Icons.home_outlined),
//             ),
//             new SalomonBottomBarItem(
//               title: new Text('POST'),
//               icon: Icon(Icons.add_box),
//             ),
//             new SalomonBottomBarItem(
//               title: new Text('NOTIFICATIONS'),
//               icon: Icon(Icons.notifications_outlined),
//             ),
//             new SalomonBottomBarItem(
//               activeIcon: Container(
//                   height: 23,
//                   width: 23,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     image: DecorationImage(
//                       image: AssetImage('images/1.jpeg'),
//                       fit: BoxFit.cover,
//                     ),
//                   )),
//               title: new Text('PROFILE'),
//               icon: Icon(Icons.account_circle_outlined),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
