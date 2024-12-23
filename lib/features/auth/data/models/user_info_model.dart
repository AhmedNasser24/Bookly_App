import 'package:bookly_app/constants.dart';

class UserInfoModel {
  String? fullName, userName, email, password, confirmPassword, phone, address;
  bool admin = false;
  UserInfoModel({
    required this.fullName,
    required this.userName,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.phone,
    required this.address,
    required this.admin,
  });

  factory UserInfoModel.fromJson(Map<String, dynamic> json) => UserInfoModel(
        fullName: json['fullName'],
        userName: json['userName'],
        email: json['email'],
        password: json['password'],
        confirmPassword: json['confirmPassword'],
        phone: json['phone'],
        address: json['address'],
        admin: json['admin'],
      );
  Map<String, dynamic> toJson() => {
        kFullName: fullName,
        kUserName: userName,
        kEmail: email,
        kPassword: password,
        kConfirmPassword: confirmPassword,
        kPhoneNumber: phone,
        kAddress: address,
        kIsAdmin: admin
      };
}
