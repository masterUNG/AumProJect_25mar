// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ThaiModel {
  final String id;
  final String subdistrict;
  final String district;
  final String province;
  final String zipcode;
  ThaiModel({
    required this.id,
    required this.subdistrict,
    required this.district,
    required this.province,
    required this.zipcode,
  });

  ThaiModel copyWith({
    String? id,
    String? subdistrict,
    String? district,
    String? province,
    String? zipcode,
  }) {
    return ThaiModel(
      id: id ?? this.id,
      subdistrict: subdistrict ?? this.subdistrict,
      district: district ?? this.district,
      province: province ?? this.province,
      zipcode: zipcode ?? this.zipcode,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'subdistrict': subdistrict,
      'district': district,
      'province': province,
      'zipcode': zipcode,
    };
  }

  factory ThaiModel.fromMap(Map<String, dynamic> map) {
    return ThaiModel(
      id: map['id'] as String,
      subdistrict: map['subdistrict'] as String,
      district: map['district'] as String,
      province: map['province'] as String,
      zipcode: map['zipcode'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ThaiModel.fromJson(String source) =>
      ThaiModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ThaiModel(id: $id, subdistrict: $subdistrict, district: $district, province: $province, zipcode: $zipcode)';
  }

  @override
  bool operator ==(covariant ThaiModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.subdistrict == subdistrict &&
        other.district == district &&
        other.province == province &&
        other.zipcode == zipcode;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        subdistrict.hashCode ^
        district.hashCode ^
        province.hashCode ^
        zipcode.hashCode;
  }
}
