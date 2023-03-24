import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/data/routing_data.dart';
//import 'package:gorky_name/internal/theme/screen.dart';
//import 'package:gorky_name/ui/component/widgets/library_logo.dart';
import 'package:provider/provider.dart';

class SheduleOfEvents extends StatefulWidget {
  const SheduleOfEvents({Key? key}) : super(key: key);

  @override
  State<SheduleOfEvents> createState() => _SheduleOfEventsState();
}

class _SheduleOfEventsState extends State<SheduleOfEvents> {
  late String task;
  late String note;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    context.read<RoutingData>().setRouteNextSteep(GlobalVar.routeEmpty);
    return SafeArea(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  autofocus: true,
                  initialValue: '',
                  decoration: const InputDecoration(
                      labelText: 'Время проведения мероприятия',
                      hintText: 'Для примера 11:00 или 10:15 - 11:20'),
                  onChanged: (value) {
                    setState(() {
                      task = value;
                    });
                  },
                  validator: (val) {
                    return val!.trim().isEmpty
                        ? 'Task name should not be empty'
                        : null;
                  },
                ),
                TextFormField(
                  initialValue: '',
                  decoration: const InputDecoration(
                    labelText: 'Наименование мероприятия',
                  ),
                  onChanged: (value) {
                    setState(() {
                      note = value == null ? '' : value;
                    });
                  },
                ),
                ElevatedButton(
                  child: const Text('Добавить'),
                  onPressed: _validateAndSave,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _validateAndSave() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      //_onFormSubmit();
    } else {
      //print('form is invalid');
    }
  }

  /* void _onFormSubmit() {
    Box<Todo> contactsBox = Hive.box<Todo>(HiveBoxes.todo);
    contactsBox.add(Todo(task: task, note: note));
    //Navigator.of(context).pop();
  } */

}
