import 'package:flutter/material.dart';
import 'package:notas/components/app_bar.dart';
import 'package:notas/components/card_item.dart';
import 'package:notas/components/card_student.dart';
import 'package:notas/data.dart';
import 'package:notas/models/course.dart';
import 'package:notas/models/item.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  List _courses = courses;
  Course _selectedCourse;
  TextEditingController _titleController = TextEditingController();
  TextEditingController _studentController = TextEditingController();

  List _students = students;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Column(
          children: <Widget>[
            evaluationName(),
            dropdownItem(),
            studentSearch(),
            Expanded(
              child: ListView(
                children: _students.map((element) => cardStudent(element)).toList(),
              ),
            ),
          ],
        ));
  }

  Widget studentSearch() {
    return TextFormField(
      controller: _studentController,
      decoration: InputDecoration(
        hintText: 'Buscar por',
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget evaluationName() {
    return TextFormField(
      controller: _titleController,
      decoration: InputDecoration(
        hintText: 'Nombre evaluación',
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget dropdownItem() {
    return DropdownButton<Item>(
      hint: Text('Seleccione asignatura'),
      isExpanded: true,
      value: _selectedCourse,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (Item newValue) {
        setState(() {
          _selectedCourse = newValue;
        });
      },
      items: _courses.map<DropdownMenuItem<Item>>((element) {
        return DropdownMenuItem<Item>(
          value: element,
          child: Text(element.title),
        );
      }).toList(),
    );
  }

/*Widget popUpItem() {
    return PopupMenuButton<Item>(
      onSelected: (Item result) {
        setState(() {
          _selectedCourse = result;
        });
      },
      itemBuilder: (BuildContext context) => _courses.map((element) {
        return PopupMenuItem<Item>(
          value: element,
          child: Text(element.title),
        );
      }).toList(),
    );
  }*/
}
