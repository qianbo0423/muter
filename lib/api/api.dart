import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:meedu/models/vip.dart';
import 'package:meedu/config/config.dart';
import 'package:meedu/models/slider.dart';
import 'package:meedu/models/course.dart';
import 'package:meedu/models/index_banner.dart';

Future<List<SliderModel>> getBanners() async {
  List<SliderModel> slider = [];
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
  return slider;
}

Future<List<IndexBannerModel>> getIndexBanners() async {
  List<IndexBannerModel> banners = [];
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

  return banners;
}

Future<List<VipModel>> getRoles() async {
  List<VipModel> roles = [];
  Dio dio = new Dio(BaseOptions(baseUrl: Config.domain));

  var res = await dio.get("/roles");
  var json = jsonDecode(res.toString());
  if (json['code'] != 0) {
    // 错误
  } else {
    for (var i = 0; i < json['data'].length; i++) {
      roles.add(VipModel.fromJson(json['data'][i]));
    }
  }
  return roles;
}
