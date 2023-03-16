import 'package:flutter/material.dart';
import 'screens/time_log.dart';
// import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'Demo API';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData.dark(),
      home: const TimeLogPage(),
    );
  }
}
