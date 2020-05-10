import 'package:flutter/material.dart';
import 'package:meedu/api/api.dart';
import 'package:meedu/components/role.dart';
import 'package:meedu/models/vip.dart';

class VipPage extends StatefulWidget {
  @override
  State<VipPage> createState() => new _VipPageState();
}

class _VipPageState extends State<VipPage> with TickerProviderStateMixin {
  List<VipModel> _roles = [];

  @override
  void initState() {
    super.initState();
    getRoles().then((roles) {
      setState(() {
        _roles = roles;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('会员套餐'),
      ),
      body: ListView.builder(
          itemCount: _roles.length,
          itemBuilder: (BuildContext ctx, int index) {
            return new RoleComponent(
              role: _roles[index],
            );
          }),
    );
  }
}
