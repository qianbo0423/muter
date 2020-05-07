import 'package:flutter/material.dart';
import '../components/slider.dart';

class IndexPage extends StatefulWidget {
  @override
  State<IndexPage> createState() => new _IndexPageState();
}

class _IndexPageState extends State<IndexPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.07),
        child: SafeArea(
          top: true,
          child: Offstage(),
        ),
      ),
      body: new Container(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: new Column(
            children: <Widget>[
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                        child: new FlatButton.icon(
                            onPressed: () {
                              print('点击我了');
                            },
                            icon: new Icon(
                              Icons.search,
                              size: 16.0,
                            ),
                            label: new Text(
                              '搜索课程',
                              style: new TextStyle(fontSize: 16.0),
                            )))
                  ],
                ),
                decoration: new BoxDecoration(
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0)),
                    color: Colors.black12),
              ),
              new SliderComponent(),
            ],
          )),
    );
  }
}
