// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  final String id;
  final String iduser;
  final String prefix;
  final String firstname;
  final String lastname;
  final String type;
  final String user;
  final String password;
  UserModel({
    required this.id,
    required this.iduser,
    required this.prefix,
    required this.firstname,
    required this.lastname,
    required this.type,
    required this.user,
    required this.password,
  });

  UserModel copyWith({
    String? id,
    String? iduser,
    String? prefix,
    String? firstname,
    String? lastname,
    String? type,
    String? user,
    String? password,
  }) {
    return UserModel(
      id: id ?? this.id,
      iduser: iduser ?? this.iduser,
      prefix: prefix ?? this.prefix,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      type: type ?? this.type,
      user: user ?? this.user,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'iduser': iduser,
      'prefix': prefix,
      'firstname': firstname,
      'lastname': lastname,
      'type': type,
      'user': user,
      'password': password,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      iduser: map['iduser'] as String,
      prefix: map['prefix'] as String,
      firstname: map['firstname'] as String,
      lastname: map['lastname'] as String,
      type: map['type'] as String,
      user: map['user'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(id: $id, iduser: $iduser, prefix: $prefix, firstname: $firstname, lastname: $lastname, type: $type, user: $user, password: $password)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.iduser == iduser &&
        other.prefix == prefix &&
        other.firstname == firstname &&
        other.lastname == lastname &&
        other.type == type &&
        other.user == user &&
        other.password == password;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        iduser.hashCode ^
        prefix.hashCode ^
        firstname.hashCode ^
        lastname.hashCode ^
        type.hashCode ^
        user.hashCode ^
        password.hashCode;
  }
}
