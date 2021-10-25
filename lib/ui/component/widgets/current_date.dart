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
        "${DateTime.now().hour.toString().padLeft(2, '0')}:${DateTime.now().minute.toString().padLeft(2, '0')}:${DateTime.now().second.toString().padLeft(2, '0')}";
    _currentDate =
        "${DateTime.now().day.toString().padLeft(2, '0')}.${DateTime.now().month.toString().padLeft(2, '0')}.${DateTime.now().year}";
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getCurrentTime());
    super.initState();
  }

  void _getCurrentTime() {
    setState(() {
      _currentTime =
          "${DateTime.now().hour.toString().padLeft(2, '0')}:${DateTime.now().minute.toString().padLeft(2, '0')}:${DateTime.now().second.toString().padLeft(2, '0')}";
      _currentDate =
          "${DateTime.now().day.toString().padLeft(2, '0')}.${DateTime.now().month.toString().padLeft(2, '0')}.${DateTime.now().year}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_currentTime,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold)),
        Text(_currentDate, style: Theme.of(context).textTheme.headline5),
      ],
    );
  }
}
