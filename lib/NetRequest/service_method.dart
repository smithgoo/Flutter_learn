import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import './base_url.dart';
import 'package:html/parser.dart';

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

Future moveInfoReqMethod(url) async {
  print('开始获取${url}数据......');
  Dio dio = new Dio();
  Response res = await dio.get("http://www.70sky.com/movie.html");

  // 解析标签的值
  List xx = [];

  List movesName =
      parse(res.data).querySelectorAll("div.myui-vodlist__detail > h4 > a");

  List movesActor =
      parse(res.data).querySelectorAll("div.myui-vodlist__detail > p");

  // 获取电影链接
  movesName.forEach((element) {
    Map tt = {};
    tt['link'] = 'http://www.70sky.com' + element.attributes['href'];
    tt['title'] = element.attributes['title'];
    xx.add(tt);
  });

  // 获取电影链接
  int idx = 0;
  movesActor.forEach((element) {
    Map tt = xx[idx];
    tt['text'] = element.text;
    idx++;
  });

  xx.forEach((element) {
    print(element);
  });
}

// http://www.70sky.com/index.html
