// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class StudentAcademyModel {
  final String id;
  final String academy;
  StudentAcademyModel({
    required this.id,
    required this.academy,
  });

  StudentAcademyModel copyWith({
    String? id,
    String? academy,
  }) {
    return StudentAcademyModel(
      id: id ?? this.id,
      academy: academy ?? this.academy,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'academy': academy,
    };
  }

  factory StudentAcademyModel.fromMap(Map<String, dynamic> map) {
    return StudentAcademyModel(
      id: map['id'] as String,
      academy: map['academy'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentAcademyModel.fromJson(String source) =>
      StudentAcademyModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'StudentAcademyModel(id: $id, academy: $academy)';

  @override
  bool operator ==(covariant StudentAcademyModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.academy == academy;
  }

  @override
  int get hashCode => id.hashCode ^ academy.hashCode;
}
