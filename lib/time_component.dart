// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';


class TimeComponent extends StatelessWidget {
  final int timeValue;
  final String unit;

  const TimeComponent({Key? key, required this.timeValue, required this.unit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Center(
        child: Text(
          timeValue < 10 ? '0$timeValue $unit' : '$timeValue $unit',

          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}