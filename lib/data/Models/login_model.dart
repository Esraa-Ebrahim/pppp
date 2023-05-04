import 'package:collection/collection.dart';

class LoginModel {
  String? message;
  String? accessToken;

  LoginModel({this.message, this.accessToken});

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        message: json['message'] as String?,
        accessToken: json['access_token'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'message': message,
        'access_token': accessToken,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! LoginModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => message.hashCode ^ accessToken.hashCode;
}
