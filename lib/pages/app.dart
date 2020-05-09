import 'package:flutter/material.dart';
import '../pages/index.dart';
import '../components/navigation_icon.dart';
import './user.dart';
import './vip.dart';
import '../global_config.dart';

class AppPage extends StatefulWidget {
  @override
  State<AppPage> createState() => new _AppPageState();
}

class _AppPageState extends State<AppPage> with TickerProviderStateMixin {
  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  @override
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
        icon: new Icon(Icons.dashboard),
        title: new Text("首页"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.cake),
        title: new Text("会员"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.perm_identity),
        title: new Text("我的"),
        vsync: this,
      ),
    ];
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }

    _pageList = <StatefulWidget>[
      new IndexPage(),
      new VipPage(),
      new UserPage(),
    ];
    _currentPage = _pageList[_currentIndex];
  }

  void _rebuild() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    for (NavigationIconView view in _navigationViews) {
      view.controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
        items: _navigationViews
            .map((NavigationIconView navigationIconView) =>
                navigationIconView.item)
            .toList(),
        currentIndex: _currentIndex,
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _navigationViews[_currentIndex].controller.reverse();
            _currentIndex = index;
            _navigationViews[_currentIndex].controller.forward();
            _currentPage = _pageList[_currentIndex];
          });
        });

    return new MaterialApp(
        home: new Scaffold(
          body: new Center(child: _currentPage),
          bottomNavigationBar: bottomNavigationBar,
        ),
        theme: GlobalConfig.themeData);
  }
}
