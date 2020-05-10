import 'package:flutter/material.dart';
import 'package:meedu/models/slider.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SliderComponent extends StatelessWidget {
  final List<SliderModel> sliders;

  SliderComponent({Key key, this.sliders}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return new Container(
      height: 160,
      child: new Swiper(
        itemCount: sliders.length,
        itemBuilder: (BuildContext buildContext, int index) {
          return Image.network(
            sliders[index].thumb,
            fit: BoxFit.fill,
          );
        },
        pagination: new SwiperPagination(),
      ),
    );
  }
}
