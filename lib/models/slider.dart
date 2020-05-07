class SliderModel {
  final String thumb;
  final String type;
  final int id;

  SliderModel(this.thumb, this.type, this.id);

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
