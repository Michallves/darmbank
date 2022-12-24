class AddressModel {
  final String? state;
  final String? city;
  final String? district;
  final String? street;
  final String? number;

  AddressModel({
    this.state,
    this.city,
    this.district,
    this.street,
    this.number,
  });

  factory AddressModel.fromMap(Map<String, dynamic> json) => AddressModel(
        state: json["state"],
        city: json["city"],
        district: json["district"],
        street: json["street"],
        number: json["number"],
      );

  Map<String, dynamic> toMap() => {
        "state": state,
        "city": city,
        "district": district,
        "street": street,
        "number": number,
      };
}
