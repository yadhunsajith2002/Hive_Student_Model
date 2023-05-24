import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/model/db_model.dart';
import 'package:flutter_application_1/screens/home/screen_home.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(StudentModelAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenHome(),
    );
  }
}
