import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('Choose a location'),
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            _count +=1 ;
          });
        }, child: Text('The Count is $_count'),

      )
    );
  }
}

