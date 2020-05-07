import 'package:flutter/material.dart';

class CourseBanner extends StatefulWidget {
  @override
  State<CourseBanner> createState() {
    return new _CourseBannerState();
  }
}

class _CourseBannerState extends State<CourseBanner> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Text(
                '我是banner名',
                style: new TextStyle(fontSize: 24.0),
              )
            ],
          ),
          new Row(
            children: <Widget>[],
          )
        ],
      ),
    );
  }
}
