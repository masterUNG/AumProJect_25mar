// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class StudentFacultyModel {
  final String id;
  final String faculty;
  StudentFacultyModel({
    required this.id,
    required this.faculty,
  });

  StudentFacultyModel copyWith({
    String? id,
    String? faculty,
  }) {
    return StudentFacultyModel(
      id: id ?? this.id,
      faculty: faculty ?? this.faculty,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'faculty': faculty,
    };
  }

  factory StudentFacultyModel.fromMap(Map<String, dynamic> map) {
    return StudentFacultyModel(
      id: map['id'] as String,
      faculty: map['faculty'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentFacultyModel.fromJson(String source) =>
      StudentFacultyModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'StudentFacultyModel(id: $id, faculty: $faculty)';

  @override
  bool operator ==(covariant StudentFacultyModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.faculty == faculty;
  }

  @override
  int get hashCode => id.hashCode ^ faculty.hashCode;
}
