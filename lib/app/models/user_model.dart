import 'package:darmbank/app/models/address_model.dart';

class UserModel {
  final String? uid;
  final String? cpf;
  final String? email;
  final String? name;
  final String? photoUrl;
  final AddressModel? address;
  final String? telephone;
  final String? accountType;

  final String? password;
  final String? confirmPassword;

  UserModel(
      {this.uid,
      this.cpf,
      this.email,
      this.name,
      this.photoUrl,
      this.address,
      this.telephone,
      this.accountType,
      this.password,
      this.confirmPassword});

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        uid: json["uid"],
        cpf: json["cpf"],
        email: json["email"],
        name: json["name"],
        address: json["address"],
        telephone: json["telephone"],
        accountType: json["accountType"],
        photoUrl: json["photoUrl"],
      );

  Map<String, dynamic> toMap() => {
        "uid": uid,
        "cpf": cpf,
        "email": email,
        "name": name,
        "address": address,
        "telephone": telephone,
        "accountType": accountType,
        "photoUrl": photoUrl,
      };
}
