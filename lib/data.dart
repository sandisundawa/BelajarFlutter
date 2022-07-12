class Data {
  int? id;
  String? first_name;
  String? last_name;
  String? email;
  String? avatar;

  Data({this.id,
    this.first_name,
    this.last_name,
    this.email,
    this.avatar});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(id: json['id'],
        first_name: json['first_name'],
        last_name: json['last_name'],
        email: json['email'],
        avatar: json['avatar']);
  }
}
