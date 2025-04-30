import 'package:flutter/material.dart';
import 'app.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);


 //debugPaintSizeEnabled = true;




  runApp(const App());
}

