import 'package:meedu/models/course.dart';

class IndexBannerModel {
  final String name;
  final List<CourseModel> courses;

  factory IndexBannerModel.fromJson(Map<String, dynamic> json) {
    return new IndexBannerModel(json['name'], json['courses']);
  }

  IndexBannerModel(this.name, this.courses);
}
