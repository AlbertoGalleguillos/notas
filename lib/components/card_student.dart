import 'package:flutter/material.dart';
import 'package:notas/models/item.dart';
import 'package:notas/models/student.dart';

Widget cardStudent(Student student) {
  return Card(
    child: ListTile(
      title: Text(student.name),
    ),
  );
}
