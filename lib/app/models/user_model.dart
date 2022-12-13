class UserModel {
  final String? userId;
  final String? name;
  final String? email;
  final String? cpf;
  final String? telephone;
  final String? accountType;
  final String? imageUrl;

  UserModel(
      {this.userId,
      this.name,
      this.email,
      this.cpf,
      this.imageUrl,
      this.telephone,
      this.accountType});

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        userId: json["userId"],
        name: json["name"],
        email: json["email"],
        cpf: json["cpf"],
        telephone: json["telephone"],
        accountType: json["accountType"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toMap() => {
        "userId": userId,
        "name": name,
        "email": email,
        "cpf": cpf,
        "telephone": telephone,
        "accountType": accountType,
        "imageUrl": imageUrl,
      };
}
