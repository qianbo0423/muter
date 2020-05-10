import 'package:flutter/material.dart';
import 'package:meedu/models/index_banner.dart';
import 'package:meedu/components/course_item.dart';

class IndexBannerComponent extends StatelessWidget {
  final List<IndexBannerModel> banners;

  IndexBannerComponent({Key key, this.banners}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    List<Widget> rows = [];

    for (var i = 0; i < banners.length; i++) {
      List<Widget> courses = [];
      for (var j = 0; j < banners[i].courses.length; j++) {
        courses.add(new CourseItem(
          course: banners[i].courses[j],
        ));
      }

      rows.add(new Container(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          margin: EdgeInsets.only(bottom: 15.0),
          child: new Column(
            children: <Widget>[
              new Container(
                child: new Text(
                  banners[i].name,
                  style: new TextStyle(fontSize: 20),
                ),
              ),
              new Container(
                height: 145.0,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: courses,
                ),
              ),
            ],
          )));
    }

    return new Column(
      children: rows,
    );
  }
}
