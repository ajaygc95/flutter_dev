import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WolrdTime {
  late String location;
  late String time;
  late String flag;
  late String Url;

  void getData() async {
    
    Response response = await get(
        Uri.parse("http://worldtimeapi.org/api/timezone/America/Los_Angeles"));
    Map data = jsonDecode(response.body);
    String datetime = data['datetime'];
    String offset = data['utc_offset'];

    // print(datetime);
    // print(dateoffset);

    // Create a datetime Object
    DateTime now = DateTime.parse(datetime);
    now = now.subtract(Duration(hours: int.parse(offset.substring(1, 3))));
    print(now);
  }
}
