import 'package:flutter/material.dart';
import 'package:notas/models/item.dart';

Widget cardItem(Item item) {
  return Card(
    child: ListTile(
      title: Text(item.title),
    ),
  );
}
