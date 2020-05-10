class VipModel {
  final int id;
  final int charge;
  final String name;
  final int expiredDay;
  final List<String> descRows;

  VipModel(this.id, this.name, this.charge, this.expiredDay, this.descRows);

  factory VipModel.fromJson(Map<String, dynamic> json) {
    return new VipModel(json['id'], json['name'], json['charge'],
        json['expired_days'], json['desc_rows']);
  }
}
