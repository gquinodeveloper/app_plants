import 'package:dio/dio.dart';
import 'package:g58_appdesign/models/user_model.dart';

class UserProvider {
  Future<List<UserModel>> getUsers() async {
    var dio = Dio();
    final response = await dio.get('https://reqres.in/api/users');
    return (response.data["data"] as List)
        .map((json) => UserModel.fromJson(json))
        .toList();
  }
}
