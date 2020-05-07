import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  @override
  State<UserPage> createState() => new _UserPageState();
}

class _UserPageState extends State<UserPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('user'),
    );
  }
}
