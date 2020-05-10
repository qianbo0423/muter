import 'package:flutter/material.dart';
import 'package:meedu/models/course.dart';

class CourseItem extends StatelessWidget {
  final CourseModel course;

  CourseItem({Key key, this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: EdgeInsets.only(right: 8.0),
        child: new Column(
          children: <Widget>[
            new Container(
              width: 160,
              height: 120,
              child: Image.network(course.thumb),
            ),
            new Container(
              padding: EdgeInsets.only(top: 5.0),
              child: new Text(
                course.title,
                style: new TextStyle(fontSize: 14.0),
              ),
            )
          ],
        ));
  }
}
