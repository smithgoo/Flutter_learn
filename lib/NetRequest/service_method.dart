import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import './base_url.dart';

Future xxmethod() async {
  try {
    print('开始获取数据......');
    Response response;
    Dio dio = new Dio();
    // dio.options.contentType =
    // ContentType('application', 'x-www-form-urlencoded');
    // var formData = {'lon': '115.02932', 'lat': '35.76198'};

    response = await dio.get("https://idiom.sixming.com/get.php");
    // response = await dio.post(servicePatch['homePageContent'], data: formData);

    if (response.statusCode == 200) {
      // print(response.data);
      return response.data;
    } else {
      throw Exception("serror port break --------");
    }
  } catch (e) {
    return print("ERROR: ========>${e}");
  }
}
