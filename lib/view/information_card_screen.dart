import 'package:flutter/material.dart';
import 'package:task1_twoscreen/view/components/body.dart';
import 'package:task1_twoscreen/view/body1.dart';

class InformationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tư vấn phát triển dự án BĐS",
          style: TextStyle(color: Colors.blue.shade900),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.blue.shade900,
        ),
        centerTitle: true,
      ),
      body: Body1(),
    );
  }
}
