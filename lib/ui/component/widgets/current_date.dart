import 'package:flutter/material.dart';
import 'dart:async';

class CurrentDate extends StatefulWidget {
  const CurrentDate({Key? key}) : super(key: key);

  @override
  _CurrentDateState createState() => _CurrentDateState();
}

class _CurrentDateState extends State<CurrentDate> {
  late String _currentTime;
  late String _currentDate;

  @override
  void initState() {
    _currentTime =
        "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}";
    _currentDate =
        "${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}";
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getCurrentTime());
    super.initState();
  }

  void _getCurrentTime() {
    setState(() {
      _currentTime =
          "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}";
      _currentDate =
          "${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_currentTime, style: Theme.of(context).textTheme.headline5),
        Text(_currentDate, style: Theme.of(context).textTheme.headline5),
      ],
    );
  }
}
