class VipModel {
  final int id;
  final int charge;
  final String name;
  final int expiredDay;
  final List<String> descRows;

  VipModel({this.id, this.name, this.charge, this.expiredDay, this.descRows});

  factory VipModel.fromJson(Map<String, dynamic> json) {
    var descRows = new List<String>.from(json['desc_rows']);
    return new VipModel(
        id: json['id'],
        name: json['name'],
        charge: json['charge'],
        expiredDay: json['expire_days'],
        descRows: descRows);
  }
}
