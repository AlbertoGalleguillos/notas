import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String string) {
  SnackBar snackBar = SnackBar(content: Text(string));
  Scaffold.of(context).showSnackBar(snackBar);
}