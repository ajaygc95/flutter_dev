import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:intl/intl_browser.dart';

class WolrdTime {
  late String location;
  late String time;
  late String flag;
  late String Url;

  WolrdTime(this.location, this.flag, this.Url);

  Future<void> getData() async {
    Response response =
        await get(Uri.parse("http://worldtimeapi.org/api/timezone/$Url"));
    Map data = jsonDecode(response.body);
    String datetime = data['datetime'];
    String offset = data['utc_offset'];

    DateTime now = DateTime.parse(datetime);
    now = now.subtract(Duration(hours: int.parse(offset.substring(1, 3))));

    time = DateFormat()
  }
}
