import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import './base_url.dart';

Future xxmethod() async {
  print('开始获取数据。。。。')

  try {

     Response response;
     Dio dio = new Dio();
     dio.options.contentType = ContentType.parse('json/text');
     var formData = {"xx":"xxx"};

     response = await dio.post("www.baidu.com",data:formData);

     if response.statusCode == 200 {

     } else {
      throw Exception('serror port break --------')
     }
  } catch(e){

  }

 
}
