import 'dart:convert';

import 'package:dio/dio.dart';
import '../config/config.dart';
import '../models/slider.dart';

Future<List<SliderModel>> getBanners() async {
  List<SliderModel> slider = [];
  try {
    Dio dio = new Dio(BaseOptions(baseUrl: Config.domain));

    var res = await dio.get("/sliders");
    var json = jsonDecode(res.toString());
    if (json['code'] != 0) {
      // 错误
    }

    for (var i = 0; i < json['data'].length; i++) {
      slider.add(new SliderModel(json['data'][i]['thumb'], "course", 0));
    }
  } catch (e) {
    print(e);
  }
  return slider;
}
