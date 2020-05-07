import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../api/api.dart';
import '../models/slider.dart';

class SliderComponent extends StatefulWidget {
  @override
  State<SliderComponent> createState() {
    return _SliderComponentState();
  }
}

class _SliderComponentState extends State<SliderComponent> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: new FutureBuilder(
            future: getBanners(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                List<SliderModel> sliders = [];
                for (var i = 0; i < snapshot.data.length; i++) {
                  sliders.add(snapshot.data[i]);
                }
                return new CarouselSlider(
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        height: 196.0),
                    items: sliders
                        .map((item) => Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.network(item.thumb)))
                        .toList());
              }
              //请求未完成时弹出loading
              return CircularProgressIndicator();
            }));
  }
}
