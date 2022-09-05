import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Material/MaterialColor.dart';

class MaterialImage extends StatefulWidget {
  final String image;
  final bool video;

  const MaterialImage({Key? key, required this.image, required this.video})
      : super(key: key);

  @override
  _MaterialImageState createState() => _MaterialImageState();
}

class _MaterialImageState extends State<MaterialImage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/' + widget.image),
          fit: BoxFit.cover,
        )),
        child: widget.video
            ? new Center(
                child: new Icon(Icons.play_arrow,
                    size: 60, color: appColor.withOpacity(0.8)),
              )
            : new Container(),
      ),
    );
  }
}
