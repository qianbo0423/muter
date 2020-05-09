class CourseModel {
  final int id;
  final String title;
  final String thumb;
  final int charge;
  final String shortDescription;
  final String renderDesc;
  final String publishedAt;
  final int isRec;
  final int userCount;

  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return new CourseModel(
        json['id'],
        json['title'],
        json['thumb'],
        json['charge'],
        json['short_description'],
        json['render_desc'],
        json['published_at'],
        json['is_rec'],
        json['user_count']);
  }

  CourseModel(
      this.id,
      this.title,
      this.thumb,
      this.charge,
      this.shortDescription,
      this.renderDesc,
      this.publishedAt,
      this.isRec,
      this.userCount);
}
