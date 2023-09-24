import 'package:flutter/material.dart';
//import 'package:crud_mecanicsolution/screens/screenmecanicos.dart';
import 'package:crud_mecanicsolution/screens/screeniniciosesion.dart';

//importaciones de firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';

//Servicios
//import 'package:crud_mecanicsolution/services/firebase_service.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  }


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Material App',
      theme: ThemeData(
        useMaterial3: true,
      ), 
      home: const ScreenInicio()
     
    );
  }
}
