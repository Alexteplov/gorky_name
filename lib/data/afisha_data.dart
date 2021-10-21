/* import 'package:flutter/material.dart';
import 'package:gorky_name/ui/component/widgets/afisha_event.dart';

class AfishaData {
  //final DateTime titleTime = DateTime.now();
  final Map<String, String> events = {'10:00': "Совещание у Тифани"};

  List<Widget> dataEv = [];

//  Widget set setWidget => dataEv.add(const AfishaEvent(time: '123', information: '324223423'));

  AfishaData(Map<String, String> events) {
    this.events;
    events.forEach((k, v) => dataEv.add(AfishaEvent(time: k, information: v)));
  }

  List<Widget> get getWidgets => dataEv.toList();
}
 */