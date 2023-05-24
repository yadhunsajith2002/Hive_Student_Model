import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/Functions/db_functions.dart';
import 'package:flutter_application_1/db/model/db_model.dart';

class AddStudentWidget extends StatelessWidget {
  AddStudentWidget({super.key});

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(children: [
        TextFormField(
          controller: _nameController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: 'Name'),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: _ageController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: 'Age'),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton.icon(
            onPressed: () {
              onAddStudentButtonClicked();
            },
            icon: Icon(Icons.add),
            label: Text('Add Student'))
      ]),
    );
  }

  Future<void> onAddStudentButtonClicked() async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    if (_name.isEmpty || _age.isEmpty) {
      return;
    }
    print('$_name $_age');

    final _student = StudentModel(name: _name, age: _age,);

    addStudent(_student);
  }
}
