import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

class APIManager {
  http.Client client = http.Client();

  Future suratRes(BuildContext context, {@required chapterID}) async {
    return await client
        .get(
      Uri.parse(
          'https://api.quran.com/api/v3/chapters/$chapterID/verses?recitation=1&translations=21&language=ur&text_type=words'),
    )
        .then((response) async {
      print("Surat : ${response.body}");
      return response.body;
    }).catchError((Object e) {
      print("$e");
    });
  }

  Future chapterSurats(BuildContext context) async {
    return await client
        .get(
      Uri.parse('http://api.quran.com/api/v3/chapters'),
    )
        .then((response) async {
      print("All Surats Names : ${response.body}");
      return response.body;
    }).catchError((Object e) {
      print("$e");
    });
  }
}
