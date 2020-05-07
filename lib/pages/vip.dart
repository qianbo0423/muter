import 'package:flutter/material.dart';

class VipPage extends StatefulWidget {
  @override
  State<VipPage> createState() => new _VipPageState();
}

class _VipPageState extends State<VipPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('vip'),
    );
  }
}
