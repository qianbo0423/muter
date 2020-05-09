import 'package:flutter/material.dart';
import './pages/app.dart';
import 'global_config.dart';

void main() => runApp(new MeEdu());

class MeEdu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: GlobalConfig.appName,
      home: new AppPage(),
    );
  }
}
