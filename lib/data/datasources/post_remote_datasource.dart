import 'dart:convert';

import 'package:bloc_clean_arch/data/models/post_model.dart';
import 'package:http/http.dart' as http;

abstract class PostRemoteDataSource {
  Future<List<PostModel>> getPostFromApi();
}

class PostRemoteDataSourceImpl implements PostRemoteDataSource {
  final client = http.Client();
  @override
  // Future<List<PostModel>> getPostFromApi() async {
  //   try {
  //     const url = 'http://drmohansdiabetes.co.in/HC_API/api/Dashboard';

  //     final responce = await client.post(Uri.parse(url), body: {
  //       "UserID": "vijayp",
  //       "EmpID": "147",
  //       "FromDate": "1/4/2024",
  //       "ToDate": "1/4/2024",
  //       "HCTYpe": "Delivery"
  //     });

  //     final List<dynamic> resBody = jsonDecode(responce.body);

  //     return resBody.map((json) => PostModel.fromJson(json)).toList();
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  Future<List<PostModel>> getPostFromApi() async {
    try {
      const url = 'https://jsonplaceholder.org/users';

      final responce = await client.get(Uri.parse(url));
      final List<dynamic> resBody = jsonDecode(responce.body);

      return resBody.map((json) => PostModel.fromJson(json)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
