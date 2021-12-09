import 'package:flutter/material.dart';
import 'package:task1_twoscreen/view/components/data/data.dart';

class MyDropDownBtn1 extends StatefulWidget {
  String dropdownValue = inputListContent1[0];
  MyDropDownBtn1({Key? key}) : super(key: key);

  @override
  _MyDropDownBtn1State createState() => _MyDropDownBtn1State();
}

class _MyDropDownBtn1State extends State<MyDropDownBtn1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.7,
      child: DropdownButton<String>(
        value: widget.dropdownValue,
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.blue.shade900,
        ),
        isExpanded: true,
        underline: const SizedBox(),
        iconSize: 30,
        //elevation: 16,
        style: const TextStyle(color: Colors.orange, fontSize: 16),
        onChanged: (String? newValue) {
          setState(() {
            widget.dropdownValue = newValue!;
          });
        },
        items: <String>['Đề xuất dự án', 'Dự án 1', 'Dự án 2', 'Dự án 3']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class MyDropDownBtn2 extends StatefulWidget {
  String dropdownValue = inputListContent2[0];
  MyDropDownBtn2({Key? key}) : super(key: key);

  @override
  _MyDropDownBtn2State createState() => _MyDropDownBtn2State();
}

class _MyDropDownBtn2State extends State<MyDropDownBtn2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.7,
      child: DropdownButton<String>(
        value: widget.dropdownValue,
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.blue.shade900,
        ),
        isExpanded: true,
        underline: const SizedBox(),
        iconSize: 30,
        //elevation: 16,
        style: const TextStyle(color: Colors.orange, fontSize: 16),
        onChanged: (String? newValue) {
          setState(() {
            widget.dropdownValue = newValue!;
          });
        },
        items: <String>['Lựa chọn dự án', 'Dự án 1', 'Dự án 2', 'Dự án 3']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
