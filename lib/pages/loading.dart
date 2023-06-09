import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {
    Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/Europe/London'));
    Map data = jsonDecode(response.body);
    // print(data[]);

    String datetime = data['datetime'];
    String offset = data['utc_offset'];
    print(datetime);
    print(offset);

  }


  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text('Loading Screen')),
    );
  }
}
