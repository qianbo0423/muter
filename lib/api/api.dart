import 'dart:convert';

import 'package:dio/dio.dart';
import '../config/config.dart';
import '../models/slider.dart';
import '../models/course.dart';
import '../models/index_banner.dart';

Future<List<SliderModel>> getBanners() async {
  List<SliderModel> slider = [];
  try {
    Dio dio = new Dio(BaseOptions(baseUrl: Config.domain));

    var res = await dio.get("/sliders");
    var json = jsonDecode(res.toString());
    if (json['code'] != 0) {
      // 错误
    } else {
      for (var i = 0; i < json['data'].length; i++) {
        slider.add(SliderModel.fromJson(json['data'][i]));
      }
    }
  } catch (e) {
    print(e);
  }
  return slider;
}

Future<List<IndexBannerModel>> getIndexBanners() async {
  List<IndexBannerModel> banners = [];
  try {
    Dio dio = new Dio(BaseOptions(baseUrl: Config.domain));

    var res = await dio.get("/index/banners");
    var json = jsonDecode(res.toString());
    if (json['code'] != 0) {
      // 错误
    }

    for (var i = 0; i < json['data'].length; i++) {
      List<CourseModel> courses = [];
      var item = json['data'][i];

      for (var j = 0; j < item['courses'].length; j++) {
        courses.add(CourseModel.fromJson(item['courses'][j]));
      }

      item['courses'] = courses;
      banners.add(IndexBannerModel.fromJson(item));
    }
  } catch (e) {
    print(e);
  }

  return banners;
}
