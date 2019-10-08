import 'package:flutter/material.dart';
import 'package:notas/main.dart';

const String DEFAULT_TITLE = MyApp.TITLE;

AppBar appBar({String title = DEFAULT_TITLE}) => AppBar(title: Text(title));
