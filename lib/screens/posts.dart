import 'dart:ui';

import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gesture_zoom_box/gesture_zoom_box.dart';
import 'package:get/get.dart';
import '../screens/body.dart';
import '../Material/MaterialColor.dart';
import '../Material/MaterialImage.dart';

class Posts extends StatefulWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      child: new Column(
        children: [
          new PostsCard(
            name: 'abolfazl',
            profile: 'user1.png',
            likeCount: '23M',
            commentCount: '498',
            createdAt: '1 days ago',
            follower: '2M',
            following: 822,
            posts: '2',
            bio: "Hello I'Am Abolfazl",
            numberPost: 4,
            image: 'post3.jpg',
            details:
                "Learn from yesterday, live for today, hope for tomorrow. The important thing is not to stop questioning (Albert Einstein) ",
            original: true,
            urlVideo: '',
            video: false,
            divider: '',
            online: true,
            children: [
              new MaterialImage(
                image: 'post3.jpg',
                video: false,
              ),
              new MaterialImage(
                image: '6.jpg',
                video: false,
              ),
            ],
          ),
          new PostsCard(
            name: 'reza',
            profile: 'user2.jpg',
            likeCount: '5K',
            commentCount: '2,947',
            createdAt: '2 days ago',
            follower: '8M',
            following: 1908,
            posts: '5',
            bio: "Hello I'Am reza",
            numberPost: 4,
            image: 'post4.jpg',
            details:
                'Work hard in silence, let your success be your noise To be willing is to be able (The text has nothing to do with the image)',
            original: false,
            urlVideo:
                'https://hw13.cdn.asset.aparat.com/aparat-video/0efbde349c58316a08d47d7a00ebcc4720574079-1080p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6IjMyZGM3NTljNWYxMGYyZjMwYTI3YzI1MDU2YzJiYTNlIiwiZXhwIjoxNjQwODg5Njc0LCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.l6wFZhv1GB4jmhZXrHipKmov8hv0NWR0clwgJmYSKTI',
            video: true,
            divider: 'end',
            online: false,
            children: [
              new MaterialImage(
                image: 'post4.jpg',
                video: true,
              ),
              new MaterialImage(
                image: 'post2.jpg',
                video: false,
              ),
              new MaterialImage(
                image: 'image.jpg',
                video: false,
              ),
              new MaterialImage(
                image: 'image.jpg',
                video: false,
              ),
              new MaterialImage(
                image: 'image.jpg',
                video: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// PostCard

class PostsCard extends StatefulWidget {
  final String name;
  final String profile;
  final String image;
  final String urlVideo;
  final String likeCount;
  final String commentCount;
  final String createdAt;
  final String follower;
  final int following;
  final int numberPost;
  final List<Widget> children;
  final bool original;
  final bool video;
  final bool online;
  final String bio;
  final String posts;
  final String details;
  final String divider;

  const PostsCard(
      {Key? key,
      required this.name,
      required this.profile,
      required this.image,
      required this.likeCount,
      required this.commentCount,
      required this.createdAt,
      required this.follower,
      required this.following,
      required this.bio,
      required this.posts,
      required this.numberPost,
      required this.children,
      required this.details,
      required this.original,
      required this.video,
      required this.urlVideo,
      required this.divider,
      required this.online})
      : super(key: key);

  @override
  _PostsCardState createState() => _PostsCardState();
}

class _PostsCardState extends State<PostsCard> {
  late bool favorite = false;
  late bool showName = false;
  late bool showDetails = false;

  clickFavorite() {
    if (favorite) {
      setState(() {
        favorite = false;
      });
    } else {
      setState(() {
        favorite = true;
      });
    }
  }

  clickShowDetails() {
    if (showDetails) {
      setState(() {
        showDetails = false;
      });
    } else {
      setState(() {
        showDetails = true;
      });
    }
  }

  clickShowName() {
    if (showName) {
      setState(() {
        showName = false;
      });
    } else {
      setState(() {
        showName = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Stack(
                  alignment: showDetails ? Alignment.center : Alignment.topLeft,
                  children: [
                    GestureDetector(
                      onTap: () {
                        widget.video == false
                            ? clickShowDetails()
                            : print('click');
                      },
                      onDoubleTap: () {
                        setState(() {
                          clickFavorite();
                        });
                      },
                      child: showDetails
                          ? new GestureZoomBox(
                              child: new Container(
                                height: 330,
                                width: 360,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                  color: appColor,
                                  image: DecorationImage(
                                    image: AssetImage('images/' + widget.image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                          : new Container(
                              height: 330,
                              width: 360,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: appColor,
                                image: DecorationImage(
                                  image: AssetImage('images/' + widget.image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: widget.video
                                  ? Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: new ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        ),
                                        child: new BetterPlayer.network(
                                          widget.urlVideo,
                                          betterPlayerConfiguration:
                                              BetterPlayerConfiguration(
                                            placeholder: Container(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                image: AssetImage(
                                                    'images/' + widget.image),
                                                fit: BoxFit.cover,
                                              )),
                                            ),
                                            aspectRatio: 1 / 8,
                                            autoPlay: false,
                                          ),
                                        ),
                                      ),
                                    )
                                  : new Container(),
                            ),
                    ),
                    showDetails
                        ? new Container()
                        : Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child:
                                      new AnimationConfiguration.staggeredGrid(
                                          columnCount: columnCount,
                                          position: position,
                                          duration: duration,
                                          child: new ScaleAnimation(
                                              child: new FadeInAnimation(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                new GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      clickFavorite();
                                                    });
                                                  },
                                                  child: new Icon(
                                                      favorite
                                                          ? Icons.favorite
                                                          : Icons
                                                              .favorite_border,
                                                      color: Colors.pink),
                                                ),
                                                new Text(widget.likeCount),
                                              ],
                                            ),
                                          ))),
                                )),
                          ),
                  ],
                ),
                showDetails
                    ? new Container()
                    : Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                            width: showName ? 100 : 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: new GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Get.to(PostsProfile(
                                      name: widget.name,
                                      profile: widget.profile,
                                      follower: widget.follower,
                                      following: widget.following,
                                      posts: widget.posts,
                                      bio: widget.bio,
                                      image: widget.image,
                                      numberPost: widget.numberPost,
                                      original: widget.original,
                                      online: widget.online,
                                      children: widget.children,
                                    ));
                                  });
                                },
                                onDoubleTap: () {
                                  setState(() {
                                    clickShowName();
                                  });
                                },
                                child: new AnimationConfiguration.staggeredGrid(
                                    columnCount: columnCount,
                                    position: position,
                                    duration: duration,
                                    child: new ScaleAnimation(
                                      child: new FadeInAnimation(
                                          child: showName
                                              ? Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                        height: 25,
                                                        width: 25,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    20),
                                                            topRight:
                                                                Radius.circular(
                                                                    20),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    20),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    20),
                                                          ),
                                                          color: appColor,
                                                          border: Border.all(
                                                            color: widget
                                                                        .online ==
                                                                    true
                                                                ? Colors.blue
                                                                : Colors.grey
                                                                    .shade400,
                                                            width: 1,
                                                          ),
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                'images/' +
                                                                    widget
                                                                        .profile),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        )),
                                                    new AnimationConfiguration
                                                            .staggeredGrid(
                                                        columnCount:
                                                            columnCount,
                                                        position: position,
                                                        duration: milliDuration,
                                                        child:
                                                            new SlideAnimation(
                                                                horizontalOffset:
                                                                    horizontalOffset,
                                                                child:
                                                                    new FadeInAnimation(
                                                                  child: showName
                                                                      ? Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(2),
                                                                          child:
                                                                              new Text(widget.name),
                                                                        )
                                                                      : new Container(),
                                                                ))),
                                                  ],
                                                )
                                              : Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        height: 25,
                                                        width: 25,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    20),
                                                            topRight:
                                                                Radius.circular(
                                                                    20),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    20),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    20),
                                                          ),
                                                          color: appColor,
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                'images/' +
                                                                    widget
                                                                        .profile),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        )),
                                                    showName
                                                        ? Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(0),
                                                            child: new Text(
                                                                widget.name,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                          )
                                                        : new Container(),
                                                  ],
                                                )),
                                    )),
                              ),
                            ))),
              ],
            ),
            widget.video == false
                ? showDetails
                    ? new Container()
                    : Container(
                        padding: const EdgeInsets.all(0),
                        child: Container(
                            height: 105,
                            width: 360,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color: appColor.withOpacity(0.3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: new AnimationConfiguration.staggeredGrid(
                                  columnCount: columnCount,
                                  position: position,
                                  duration: duration,
                                  child: new SlideAnimation(
                                      verticalOffset: 100,
                                      child: new FadeInAnimation(
                                        child: ListView(
                                          physics: BouncingScrollPhysics(
                                              parent:
                                                  NeverScrollableScrollPhysics()),
                                          children: [
                                            new Text(widget.details,
                                                style: TextStyle(
                                                    color: Colors.white)),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8),
                                                  child: new Text(
                                                      'View all ' +
                                                          widget.commentCount +
                                                          ' comments',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8),
                                                  child: new Text(
                                                      widget.createdAt,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ))),
                            )),
                      )
                : new Container(),
          ],
        ),
        widget.divider == 'end'
            ? new SizedBox(height: 50)
            : Padding(
                padding: const EdgeInsets.all(30),
                child: new AnimationConfiguration.staggeredGrid(
                    columnCount: columnCount,
                    position: position,
                    duration: duration,
                    child: new ScaleAnimation(
                        child: new FadeInAnimation(
                      child:
                          new Divider(thickness: 2, indent: 30, endIndent: 30),
                    ))),
              ),
      ],
    );
  }
}

/// PostProfile

class PostsProfile extends StatefulWidget {
  final String name;
  final String profile;
  final String follower;
  final int following;
  final int numberPost;
  final List<Widget> children;
  final bool original;
  final bool online;
  final String bio;
  final String posts;
  final String image;

  const PostsProfile(
      {Key? key,
      required this.name,
      required this.profile,
      required this.follower,
      required this.following,
      required this.bio,
      required this.posts,
      required this.numberPost,
      required this.image,
      required this.children,
      required this.original,
      required this.online})
      : super(key: key);
  @override
  _PostsProfileState createState() => _PostsProfileState();
}

class _PostsProfileState extends State<PostsProfile> {
  late bool favorite = false;
  late bool showDetails = false;
  late bool followUnFollow = false;

  clickFavorite() {
    if (favorite) {
      setState(() {
        favorite = false;
      });
    } else {
      setState(() {
        favorite = true;
      });
    }
  }

  clickShowDetails() {
    if (showDetails) {
      setState(() {
        showDetails = false;
      });
    } else {
      setState(() {
        showDetails = true;
      });
    }
  }

  fallowAndUnFallow() {
    if (followUnFollow) {
      setState(() {
        followUnFollow = false;
      });
    } else {
      setState(() {
        followUnFollow = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new SafeArea(
        child: new Stack(
          alignment: Alignment.bottomCenter,
          children: [
            new AnimationConfiguration.staggeredGrid(
                columnCount: columnCount,
                position: position,
                duration: duration,
                child: new ScaleAnimation(
                    child: new FadeInAnimation(
                  child: Container(
                    transform: Matrix4.translationValues(0, size.width - 50, 0),
                    child: new GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 5,
                      children: widget.children,
                    ),
                  ),
                ))),
            new AnimationConfiguration.staggeredGrid(
                columnCount: columnCount,
                position: position,
                duration: duration,
                child: new SlideAnimation(
                    child: new FadeInAnimation(
                  child: new ListView(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, bottom: 0),
                                child: Center(
                                  child: new Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color: widget.online == true
                                            ? Colors.blue
                                            : Colors.grey.shade400,
                                        width: 3,
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'images/' + widget.profile),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: followUnFollow
                                            ? appColor
                                            : Colors.white),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: new Material(
                                    color: followUnFollow
                                        ? Colors.white
                                        : Colors.blue,
                                    elevation: 0,
                                    borderRadius: BorderRadius.circular(8),
                                    child: new MaterialButton(
                                      onPressed: () {
                                        setState(() {
                                          fallowAndUnFallow();
                                        });
                                      },
                                      child: Center(
                                        child: new Text(
                                            followUnFollow
                                                ? 'Following'
                                                : 'Follow',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: followUnFollow
                                                  ? appColor
                                                  : Colors.white,
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: new Container(
                              height: 100,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: new Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 35),
                                    child: new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            new Text(widget.posts,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: appColor)),
                                            new Text('Posts',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: appColor
                                                        .withOpacity(0.7))),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            new Text(widget.follower,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: appColor)),
                                            new Text('Followers',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: appColor
                                                        .withOpacity(0.7))),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            new Text(
                                                widget.following.toString(),
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: appColor)),
                                            new Text('Following',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: appColor
                                                        .withOpacity(0.7))),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 0, top: 0),
                            child: Container(
                              width: 300,
                              child: Row(
                                children: [
                                  new Text(widget.name,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: appColor)),
                                  widget.original
                                      ? Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: new Icon(Icons.check_circle,
                                              color: Colors.blue),
                                        )
                                      : new Container(),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(0),
                            margin: const EdgeInsets.only(top: 10),
                            width: 300,
                            child: new Text(
                              widget.bio,
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
                ))),
          ],
        ),
      ),
    );
  }
}

/// OnlyPost




//
// Padding(
// padding: const EdgeInsets.all(0),
// child: new Divider(thickness: 1, indent: 50, endIndent: 50),
// ),
// Padding(
// padding: const EdgeInsets.only(top: 40),
// child: new Column(
// children: [
// ContainerImage('6.jpg'),
// ContainerImage('1.jpeg'),
// ContainerImage('2.webp'),
// ContainerImage('3.webp'),
// ContainerImage('4.webp'),
// ],),
// ),
//
// ],
// ),




// Container(
//   transform: Matrix4.translationValues(0 , 60 , 0),
//
//   height: 70,
//   decoration: BoxDecoration(
//     color: appColor,
//   ),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       // new Container(
//       //   height: 60,
//       //   width: 60,
//       //   decoration: BoxDecoration(
//       //     borderRadius: BorderRadius.circular(40),
//       //     image: DecorationImage(
//       //       image: AssetImage('images/' + widget.profile),
//       //       fit: BoxFit.cover,
//       //     ),
//       //   ),
//       // ),
//       // new Container(
//       //   transform: Matrix4.translationValues(10 , 8 , 0),
//       //
//       //   child: Padding(
//       //     padding: const EdgeInsets.all(8),
//       //     child: new Text(widget.name , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold , color: Colors.white)),
//       //   ),
//       // ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           new Icon(Icons.favorite_border , color: Colors.white),
//           new Icon(Icons.mode_comment_outlined , color: Colors.white),
//           new Icon(Icons.forward_outlined , color: Colors.white),
//         ],
//       ),
//
//       new IconButton(
//         onPressed: () {
//           setState(() {
//           });
//         },
//         icon: Icon(Icons.bookmark_outline , color: Colors.white),
//       ),
//
//     ],
//   ),
// ),

