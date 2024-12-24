import 'package:bookly_app/constants.dart';

class UserInfoModel {
  String? fullName, userName, email, password, confirmPassword, phone, address;
  bool admin  , checkTerms ;
  UserInfoModel({
    this.fullName,
    this.userName,
    this.email,
    this.password,
    this.confirmPassword,
    this.phone,
    this.address,
    this.admin = false,
    this.checkTerms = false,
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
        checkTerms: true,
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
