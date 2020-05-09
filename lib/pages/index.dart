import 'package:flutter/material.dart';
import '../api/api.dart';
import '../models/index_banner.dart';
import '../models/slider.dart';
import '../components/slider.dart';
import '../components/index_banner.dart';

class IndexPage extends StatefulWidget {
  @override
  State<IndexPage> createState() => new _IndexPageState();
}

class _IndexPageState extends State<IndexPage> with TickerProviderStateMixin {
  List<SliderModel> _sliders = [];
  List<IndexBannerModel> _indexBanners = [];

  @override
  void initState() {
    // 读取幻灯片
    getBanners().then((sliders) {
      setState(() {
        _sliders = sliders;
      });
    });

    // 读取首页banner
    getIndexBanners().then((banners) {
      setState(() {
        _indexBanners = banners;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new ListView(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
              color: Colors.black12,
              borderRadius: new BorderRadius.all(const Radius.circular(30.0))),
          margin: EdgeInsets.all(8.0),
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
                      ))),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: new SliderComponent(
            sliders: _sliders,
          ),
        ),
        new IndexBannerComponent(
          banners: _indexBanners,
        ),
      ],
    ));
  }
}
