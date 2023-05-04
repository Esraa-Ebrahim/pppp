import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:attendane_app/Shared/end_points.dart';
import 'package:attendane_app/data/Models/login_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class LoginRepo {
  Future<LoginModel?> userLogin({required name, required academyCode}) async {
    try {
      var response = await http.post(
        Uri.parse('${AppEndPoints.baseUrl}/loginstu'),
        body: {'name': name, 'academy_code': academyCode},
        headers: {},
      );


      Map<String, dynamic> responsemap = json.decode(response.body);
      if (kDebugMode) {
        print(responsemap);
      }
      if (response.statusCode == 200 && responsemap["success"] == true) {
        if (kDebugMode) {
          print(responsemap);
        }
        final data = LoginModel.fromJson(responsemap);
        showToast(
            text: data.message!, color: ToastColors.success);
        return data;
      } else if (response.statusCode != 200 &&
          responsemap["success"] == false) {
        final data = LoginModel.fromJson(responsemap);
        showToast(text: data.message!, color: ToastColors.error);
        return data;
      } else {
        if (kDebugMode) {
          print(responsemap);
        }
      }
    } on TimeoutException catch (e) {
      if (kDebugMode) {
        print('TimeoutException: ${e.toString()}');
      }
    } on SocketException catch (e) {
      if (kDebugMode) {
        print('SocketException: ${e.toString()}');
      }
    } catch (e) {
      if (kDebugMode) {
        print("Exception: ${e.toString()}");
      }
    }
    return null;
  }
}
