import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import '../screens/body.dart';
import '../Material/MaterialColor.dart';
import 'package:story_view/story_view.dart';

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  final StoryController storyController = StoryController();

  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: new AnimationLimiter(
          child: new AnimationConfiguration.staggeredGrid(
            columnCount: columnCount,
            position: position,
            duration: duration,
            child: new SlideAnimation(
              horizontalOffset: horizontalOffset,
              child: new FadeInAnimation(
                child: Row(
                  children: [
                    new StoriesCard(
                      title: 'my',
                      image: '1.jpeg',
                      online: true,
                      storyItems: [
                        StoryItem.text(
                          title: 'hello I Am Reza',
                          backgroundColor: appColor,
                        ),
                      ],
                    ),
                    new StoriesCard(
                      title: 'reza',
                      image: 'user1.png',
                      online: true,
                      storyItems: [
                        StoryItem.text(
                          title: 'hello',
                          backgroundColor: appColor,
                        ),
                        StoryItem.pageImage(
                          caption: 'Flutter',
                          url:
                              'https://res.cloudinary.com/practicaldev/image/fetch/s--xMaDR9Ad--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/l2i2vmfhlpny2qfg6nab.png',
                          controller: storyController,
                        ),
                        StoryItem.text(
                          title: 'Social Network',
                          backgroundColor: appColor,
                        ),
                      ],
                    ),
                    new StoriesCard(
                      title: 'mohammad',
                      image: 'user3.jpeg',
                      online: true,
                      storyItems: [
                        StoryItem.pageImage(
                          caption: 'Flutter',
                          url:
                              'data:image/png;base64,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',
                          controller: storyController,
                        ),
                        StoryItem.text(
                          title: 'Flutter App - Social Network',
                          backgroundColor: Colors.blue,
                        ),
                      ],
                    ),
                    new StoriesCard(
                      title: 'mohammad',
                      image: '',
                      online: true,
                      storyItems: [
                        StoryItem.pageImage(
                          caption: 'askdp[k paskdk ',
                          url:
                              'https://static2.fartaknews.com/thumbnail/25f5mthr7GVI/p_IUuvJQB-2mJilBKQWxvj1X0IDqLxtDOLlM_hFGPQJCZcp8aGL98TV13cckHCnCJhFQFliTHSDFq1zjMSGJ9b0RSLXFD0lrUYn3iexq-IHl8nssl--lxx0lfP2WABdu/%D9%BE%D8%A7%D9%88%D8%B1%DA%86%DB%8C%D9%86-+%D8%A2%DB%8C+%D9%81%DB%8C%D9%84%D9%85-+19+%D8%AF%DB%8C.jpg',
                          controller: storyController,
                        ),
                      ],
                    ),
                    new StoriesCard(
                      title: 'mohammad',
                      image: '',
                      online: false,
                      storyItems: [
                        StoryItem.pageImage(
                          url: 'images/1.jpeg',
                          controller: storyController,
                        ),
                      ],
                    ),
                    new StoriesCard(
                      title: 'mohammad',
                      image: '',
                      storyItems: [
                        StoryItem.pageImage(
                          url: 'images/1.jpeg',
                          controller: storyController,
                        ),
                      ],
                      online: false,
                    ),
                    new StoriesCard(
                      title: 'mohammad',
                      image: '',
                      storyItems: [
                        StoryItem.pageImage(
                          url: 'images/1.jpeg',
                          controller: storyController,
                        ),
                      ],
                      online: false,
                    ),
                    new StoriesCard(
                      title: 'mohammad',
                      image: '',
                      storyItems: [
                        StoryItem.pageImage(
                          url: 'images/1.jpeg',
                          controller: storyController,
                        ),
                      ],
                      online: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class StoriesPage extends StatefulWidget {
  final List<StoryItem> storyItems;

  const StoriesPage({Key? key, required this.storyItems}) : super(key: key);

  @override
  _StoriesPageState createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  final StoryController storyController = StoryController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new StoryView(
        onComplete: () {
          setState(() {
            Get.back();
          });
        },
        storyItems: widget.storyItems,
        controller: storyController,
      ),
    );
  }
}

class StoriesCard extends StatelessWidget {
  final String title;
  final String image;
  final bool online;
  final List<StoryItem> storyItems;

  const StoriesCard(
      {Key? key,
      required this.title,
      required this.image,
      required this.online,
      required this.storyItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        title == 'my'
            ? new Container()
            : Get.to(() => StoriesPage(
                  storyItems: storyItems,
                ));
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 130,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      new Container(
                        height: 130,
                        width: 60,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: title == 'my'
                              ? Border.all(
                                  color: Colors.transparent,
                                )
                              : Border.all(
                                  color: online == true
                                      ? Colors.blue
                                      : Colors.grey.shade400,
                                  width: 3,
                                ),
                          image: DecorationImage(
                            image: image.isNotEmpty
                                ? AssetImage('images/' + image)
                                : AssetImage('images/profiles.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title == 'my'
                          ? Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                                color: Color(0xff3247b6),
                              ),
                              child: new IconButton(
                                onPressed: () {},
                                icon: Center(
                                    child:
                                        Icon(Icons.add, color: Colors.white)),
                              ),
                            )
                          : new Container(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
