import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import './base_url.dart';

Future xxmethod() async {
  try {
    print('开始获取数据......');
    Response response;
    Dio dio = new Dio();
    // dio.options.contentType = ContentType.parse('json/text');
    // var formData = {"word":"%E5%B7%B1%E6%89%80%E4%B8%8D%E6%AC%B2"};

    response = await dio.get(
        "https://idiom.sixming.com/get.php?word=%E9%9A%94%E5%B2%B8%E8%A7%82%E7%81%AB");

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
