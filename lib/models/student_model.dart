// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class StudentModel {
  final String id;
  final String idstudent;
  final String prefix;
  final String firstname;
  final String lastname;
  final String nickname;
  final String birthday;
  final String age;
  final String housenum;
  final String village;
  final String alley;
  final String street;
  final String subdistrict;
  final String district;
  final String province;
  final String zipcode;
  final String phone;
  final String email;
  final String level;
  final String major;
  final String faculty;
  final String academy;
  final String phoneacademy;
  final String teacher;
  final String phoneteacher;
  final String startday;
  final String endday;
  final String nocotton;
  final String idcotton;
  final String cotton;
  final String imagestudent;
  final String personaldata;
  final String details;
  final String depositor;
  final String note;
  StudentModel({
    required this.id,
    required this.idstudent,
    required this.prefix,
    required this.firstname,
    required this.lastname,
    required this.nickname,
    required this.birthday,
    required this.age,
    required this.housenum,
    required this.village,
    required this.alley,
    required this.street,
    required this.subdistrict,
    required this.district,
    required this.province,
    required this.zipcode,
    required this.phone,
    required this.email,
    required this.level,
    required this.major,
    required this.faculty,
    required this.academy,
    required this.phoneacademy,
    required this.teacher,
    required this.phoneteacher,
    required this.startday,
    required this.endday,
    required this.nocotton,
    required this.idcotton,
    required this.cotton,
    required this.imagestudent,
    required this.personaldata,
    required this.details,
    required this.depositor,
    required this.note,
  });

  StudentModel copyWith({
    String? id,
    String? idstudent,
    String? prefix,
    String? firstname,
    String? lastname,
    String? nickname,
    String? birthday,
    String? age,
    String? housenum,
    String? village,
    String? alley,
    String? street,
    String? subdistrict,
    String? district,
    String? province,
    String? zipcode,
    String? phone,
    String? email,
    String? level,
    String? major,
    String? faculty,
    String? academy,
    String? phoneacademy,
    String? teacher,
    String? phoneteacher,
    String? startday,
    String? endday,
    String? nocotton,
    String? idcotton,
    String? cotton,
    String? imagestudent,
    String? personaldata,
    String? details,
    String? depositor,
    String? note,
  }) {
    return StudentModel(
      id: id ?? this.id,
      idstudent: idstudent ?? this.idstudent,
      prefix: prefix ?? this.prefix,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      nickname: nickname ?? this.nickname,
      birthday: birthday ?? this.birthday,
      age: age ?? this.age,
      housenum: housenum ?? this.housenum,
      village: village ?? this.village,
      alley: alley ?? this.alley,
      street: street ?? this.street,
      subdistrict: subdistrict ?? this.subdistrict,
      district: district ?? this.district,
      province: province ?? this.province,
      zipcode: zipcode ?? this.zipcode,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      level: level ?? this.level,
      major: major ?? this.major,
      faculty: faculty ?? this.faculty,
      academy: academy ?? this.academy,
      phoneacademy: phoneacademy ?? this.phoneacademy,
      teacher: teacher ?? this.teacher,
      phoneteacher: phoneteacher ?? this.phoneteacher,
      startday: startday ?? this.startday,
      endday: endday ?? this.endday,
      nocotton: nocotton ?? this.nocotton,
      idcotton: idcotton ?? this.idcotton,
      cotton: cotton ?? this.cotton,
      imagestudent: imagestudent ?? this.imagestudent,
      personaldata: personaldata ?? this.personaldata,
      details: details ?? this.details,
      depositor: depositor ?? this.depositor,
      note: note ?? this.note,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'idstudent': idstudent,
      'prefix': prefix,
      'firstname': firstname,
      'lastname': lastname,
      'nickname': nickname,
      'birthday': birthday,
      'age': age,
      'housenum': housenum,
      'village': village,
      'alley': alley,
      'street': street,
      'subdistrict': subdistrict,
      'district': district,
      'province': province,
      'zipcode': zipcode,
      'phone': phone,
      'email': email,
      'level': level,
      'major': major,
      'faculty': faculty,
      'academy': academy,
      'phoneacademy': phoneacademy,
      'teacher': teacher,
      'phoneteacher': phoneteacher,
      'startday': startday,
      'endday': endday,
      'nocotton': nocotton,
      'idcotton': idcotton,
      'cotton': cotton,
      'imagestudent': imagestudent,
      'personaldata': personaldata,
      'details': details,
      'depositor': depositor,
      'note': note,
    };
  }

  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
      id: map['id'] as String,
      idstudent: map['idstudent'] as String,
      prefix: map['prefix'] as String,
      firstname: map['firstname'] as String,
      lastname: map['lastname'] as String,
      nickname: map['nickname'] as String,
      birthday: map['birthday'] as String,
      age: map['age'] as String,
      housenum: map['housenum'] as String,
      village: map['village'] as String,
      alley: map['alley'] as String,
      street: map['street'] as String,
      subdistrict: map['subdistrict'] as String,
      district: map['district'] as String,
      province: map['province'] as String,
      zipcode: map['zipcode'] as String,
      phone: map['phone'] as String,
      email: map['email'] as String,
      level: map['level'] as String,
      major: map['major'] as String,
      faculty: map['faculty'] as String,
      academy: map['academy'] as String,
      phoneacademy: map['phoneacademy'] as String,
      teacher: map['teacher'] as String,
      phoneteacher: map['phoneteacher'] as String,
      startday: map['startday'] as String,
      endday: map['endday'] as String,
      nocotton: map['nocotton'] as String,
      idcotton: map['idcotton'] as String,
      cotton: map['cotton'] as String,
      imagestudent: map['imagestudent'] as String,
      personaldata: map['personaldata'] as String,
      details: map['details'] as String,
      depositor: map['depositor'] as String,
      note: map['note'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentModel.fromJson(String source) =>
      StudentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'StudentModel(id: $id, idstudent: $idstudent, prefix: $prefix, firstname: $firstname, lastname: $lastname, nickname: $nickname, birthday: $birthday, age: $age, housenum: $housenum, village: $village, alley: $alley, street: $street, subdistrict: $subdistrict, district: $district, province: $province, zipcode: $zipcode, phone: $phone, email: $email, level: $level, major: $major, faculty: $faculty, academy: $academy, phoneacademy: $phoneacademy, teacher: $teacher, phoneteacher: $phoneteacher, startday: $startday, endday: $endday, nocotton: $nocotton, idcotton: $idcotton, cotton: $cotton, imagestudent: $imagestudent, personaldata: $personaldata, details: $details, depositor: $depositor, note: $note)';
  }

  @override
  bool operator ==(covariant StudentModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.idstudent == idstudent &&
        other.prefix == prefix &&
        other.firstname == firstname &&
        other.lastname == lastname &&
        other.nickname == nickname &&
        other.birthday == birthday &&
        other.age == age &&
        other.housenum == housenum &&
        other.village == village &&
        other.alley == alley &&
        other.street == street &&
        other.subdistrict == subdistrict &&
        other.district == district &&
        other.province == province &&
        other.zipcode == zipcode &&
        other.phone == phone &&
        other.email == email &&
        other.level == level &&
        other.major == major &&
        other.faculty == faculty &&
        other.academy == academy &&
        other.phoneacademy == phoneacademy &&
        other.teacher == teacher &&
        other.phoneteacher == phoneteacher &&
        other.startday == startday &&
        other.endday == endday &&
        other.nocotton == nocotton &&
        other.idcotton == idcotton &&
        other.cotton == cotton &&
        other.imagestudent == imagestudent &&
        other.personaldata == personaldata &&
        other.details == details &&
        other.depositor == depositor &&
        other.note == note;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        idstudent.hashCode ^
        prefix.hashCode ^
        firstname.hashCode ^
        lastname.hashCode ^
        nickname.hashCode ^
        birthday.hashCode ^
        age.hashCode ^
        housenum.hashCode ^
        village.hashCode ^
        alley.hashCode ^
        street.hashCode ^
        subdistrict.hashCode ^
        district.hashCode ^
        province.hashCode ^
        zipcode.hashCode ^
        phone.hashCode ^
        email.hashCode ^
        level.hashCode ^
        major.hashCode ^
        faculty.hashCode ^
        academy.hashCode ^
        phoneacademy.hashCode ^
        teacher.hashCode ^
        phoneteacher.hashCode ^
        startday.hashCode ^
        endday.hashCode ^
        nocotton.hashCode ^
        idcotton.hashCode ^
        cotton.hashCode ^
        imagestudent.hashCode ^
        personaldata.hashCode ^
        details.hashCode ^
        depositor.hashCode ^
        note.hashCode;
  }
}
