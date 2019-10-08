import 'package:notas/models/student.dart';

import 'models/course.dart';
import 'models/level.dart';

List courses = <Course>[
  Course(title: 'Artes Visuales'),
  Course(title: 'Ciencias Naturales'),
  Course(title: 'Educación Física y Salud'),
  Course(title: 'Historia, Geografía y Ciencias Sociales'),
  Course(title: 'Inglés'),
  Course(title: 'Lengua indígena'),
  Course(title: 'Lenguaje y Comunicación'),
  Course(title: 'Matemática'),
  Course(title: 'Música'),
  Course(title: 'Orientación'),
  Course(title: 'Tecnología'),
];

List levels = <Level>[
  ...primaryLevels,
  ...midLevels,
];

List primaryLevels = List.generate(8, (int i) => getLevel(i, 'Básico'));
List midLevels = List.generate(4, (int i) => getLevel(i, 'Medio'));

Level getLevel(int index, String suffix) {
  return Level(title: '${index + 1}° $suffix');
}


List students = List.generate(40, (int i) {
  return Student(name: '$i° Student');
});