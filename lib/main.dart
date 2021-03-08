import 'package:adaptive_screen/views/TampilanTablet.dart';
import 'package:adaptive_screen/views/tampilanLayar5inch.dart';
import 'package:adaptive_screen/views/tampilanlayarkecil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraints) {
      if (size.width > 600 && constraints.maxHeight > 600) {
        return TampilanTablet();
      } else if (size.width > 350 && constraints.maxHeight > 350) {
        return TampilanLayar5inch();
      } else {
        return TampilanLayarKecil();
      }
    });
  }
}
