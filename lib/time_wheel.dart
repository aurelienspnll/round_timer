import 'package:flutter/material.dart';
import 'time_component.dart';

class TimeWheel extends StatefulWidget {
  const TimeWheel({Key? key}) : super(key: key);

  @override
  _TimeWheelState createState() => _TimeWheelState();
}

class _TimeWheelState extends State<TimeWheel> {
  late FixedExtentScrollController _controller;

  @override
  void initState() {
    super.initState();

    _controller = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // minutes wheel
          SizedBox(
            width: 100,
            child: ListWheelScrollView.useDelegate(
              controller: _controller,
              itemExtent: 25,
              perspective: 0.01,
              diameterRatio: 1.2,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 16,
                builder: (context, index) {
                  return TimeComponent(
                    timeValue: index,
                    unit: "min",
                  );
                },
              ),
            ),
          ),
          // seconds wheel
          SizedBox(
            width: 100,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 25,
              perspective: 0.01,
              diameterRatio: 1.2,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 12,
                builder: (context, index) {
                  return TimeComponent(
                    timeValue: index * 5,
                    unit: "secs",
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
