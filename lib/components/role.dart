import 'package:flutter/material.dart';
import 'package:meedu/models/vip.dart';

class RoleComponent extends StatelessWidget {
  final VipModel role;

  RoleComponent({Key key, this.role}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    List<Widget> descRows = [];
    role.descRows.forEach((row) {
      descRows.add(new Text(
        row,
        style: new TextStyle(fontSize: 14.0),
      ));
    });

    return Card(
      child: new Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: new Text(
                role.name,
                style: new TextStyle(fontSize: 30.0),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: new Text(
                '价格：￥' + role.charge.toString(),
                style: new TextStyle(fontSize: 24.0),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: new Column(
                children: descRows,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
