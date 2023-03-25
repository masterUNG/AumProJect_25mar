// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class StudentMajorModel {
  final String id;
  final String major;
  final String faculty;
  StudentMajorModel({
    required this.id,
    required this.major,
    required this.faculty,
  });

  StudentMajorModel copyWith({
    String? id,
    String? major,
    String? faculty,
  }) {
    return StudentMajorModel(
      id: id ?? this.id,
      major: major ?? this.major,
      faculty: faculty ?? this.faculty,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'major': major,
      'faculty': faculty,
    };
  }

  factory StudentMajorModel.fromMap(Map<String, dynamic> map) {
    return StudentMajorModel(
      id: map['id'] as String,
      major: map['major'] as String,
      faculty: map['faculty'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentMajorModel.fromJson(String source) => StudentMajorModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'StudentMajorModel(id: $id, major: $major, faculty: $faculty)';

  @override
  bool operator ==(covariant StudentMajorModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.major == major &&
      other.faculty == faculty;
  }

  @override
  int get hashCode => id.hashCode ^ major.hashCode ^ faculty.hashCode;
}
