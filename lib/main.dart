import 'package:cloud_storage_app/ui/screens/appsScreen.dart';
import 'package:cloud_storage_app/ui/widgets/info.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppsPage(),
    );
  }
}
