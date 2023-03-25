// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class IsoCottonModel {
  final String id;
  final String nocotton;
  final String idcotton;
  final String cotton;
  final String linework;
  IsoCottonModel({
    required this.id,
    required this.nocotton,
    required this.idcotton,
    required this.cotton,
    required this.linework,
  });

  IsoCottonModel copyWith({
    String? id,
    String? nocotton,
    String? idcotton,
    String? cotton,
    String? linework,
  }) {
    return IsoCottonModel(
      id: id ?? this.id,
      nocotton: nocotton ?? this.nocotton,
      idcotton: idcotton ?? this.idcotton,
      cotton: cotton ?? this.cotton,
      linework: linework ?? this.linework,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nocotton': nocotton,
      'idcotton': idcotton,
      'cotton': cotton,
      'linework': linework,
    };
  }

  factory IsoCottonModel.fromMap(Map<String, dynamic> map) {
    return IsoCottonModel(
      id: map['id'] as String,
      nocotton: map['nocotton'] as String,
      idcotton: map['idcotton'] as String,
      cotton: map['cotton'] as String,
      linework: map['linework'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory IsoCottonModel.fromJson(String source) =>
      IsoCottonModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'IsoCottonModel(id: $id, nocotton: $nocotton, idcotton: $idcotton, cotton: $cotton, linework: $linework)';
  }

  @override
  bool operator ==(covariant IsoCottonModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.nocotton == nocotton &&
        other.idcotton == idcotton &&
        other.cotton == cotton &&
        other.linework == linework;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nocotton.hashCode ^
        idcotton.hashCode ^
        cotton.hashCode ^
        linework.hashCode;
  }
}
