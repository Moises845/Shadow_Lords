

import 'package:crud_mecanicsolution/screens/screenmecanicos.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenInicio extends StatefulWidget{
  const ScreenInicio ({super.key});

 @override
  State<ScreenInicio> createState()=> _ScreenInicioState();
  
}

class _ScreenInicioState extends State<ScreenInicio>{
  @override
  Widget build(BuildContext context){
    
    return  MaterialApp(
    
    home: Scaffold(
    
    body: cuerpo(context)
    
    )
    
    ); 
  }
}

Widget cuerpo(context){
    return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://w0.peakpx.com/wallpaper/621/579/HD-wallpaper-blue-gradient-rainbow-colourful-green-iphone-ipad-nice-pink-red-samsung-tablet.jpg"),
       fit: BoxFit.cover
      )
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //logo(),
          nombre(),
          campoUsuario(),
          campoContrasena(),
          botonEntrar(context),
          botonRegistro()
        ],
      ),
    ),
  );
}
/*Widget logo(){
  return  MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 250.0,
              width: 350.0,
              child: Image.asset('assets/login.jpeg'),
            )
          ],
        ),
      ),
    ),
  );
}
*/

Widget nombre(){
  return const Text("Iniciar Sesion", style: TextStyle(color: Colors.white, fontSize: 35.0,fontWeight: FontWeight.bold),);
}

Widget campoUsuario(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Correo electronico",
        fillColor: Colors.white,
        filled: true,
      )
    ),
  );
}

Widget campoContrasena(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor: Colors.white,
        filled: true,
      )
    ),
  );
}

Widget botonEntrar(BuildContext context){
  return  Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    child: ElevatedButton(onPressed: (){
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=>const ScreenMecanicos()));
    },
    child: const Text("Iniciar"), )
  );
}

Widget botonRegistro(){
  return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    child: TextButton(onPressed: (){}, child: const Text("¿Crear una cuenta?",  textAlign: TextAlign.right, ),)
  );
}

