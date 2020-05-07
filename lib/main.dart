import 'package:flutter/material.dart';
import './pages/app.dart';

void main() => runApp(new MeEdu());

class MeEdu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MeEdu",
      home: new AppPage(),
    );
  }
}
