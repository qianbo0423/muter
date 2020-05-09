class SliderModel {
  final String thumb;
  final String type;
  final int id;

  SliderModel(this.thumb, this.type, this.id);

  factory SliderModel.fromJson(Map<String, dynamic> json) {
    return new SliderModel(json['thumb'], 'course', 1);
  }

  @override
  String toString() {
    return "thumb:" +
        this.thumb +
        "|id:" +
        this.id.toString() +
        "|type:" +
        this.type;
  }
}
