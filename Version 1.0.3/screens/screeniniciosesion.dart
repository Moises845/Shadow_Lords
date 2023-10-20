import 'package:crud_mecanicsolution/screens/screenmecanicos.dart';
import 'package:crud_mecanicsolution/screens/screenregistro.dart';
import 'package:crud_mecanicsolution/screens/tabs_screens.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class ScreenInicio extends StatefulWidget {
  const ScreenInicio({super.key});

  @override
  State<ScreenInicio> createState() => _ScreenInicioState();
}

class _ScreenInicioState extends State<ScreenInicio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: cuerpo(context)));
  }
}

Widget cuerpo(context) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://w0.peakpx.com/wallpaper/621/579/HD-wallpaper-blue-gradient-rainbow-colourful-green-iphone-ipad-nice-pink-red-samsung-tablet.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //logo(),
          nombre(),
          campoUsuario(),
          campoContrasena(context),
          botonEntrar(context),
          botonRegistro(context)
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

Widget nombre() {
  return const Text(
    "Iniciar sesion",
    style: TextStyle(
        color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
  );
}

Widget campoUsuario() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
        controller: emailController,
        decoration: const InputDecoration(
          hintText: "Correo electronico",
          fillColor: Colors.white,
          filled: true,
        )),
  );
}

Widget campoContrasena(context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
        controller: passwordController,
        //obscureText: passwordVisible,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: "Contraseña",
          fillColor: Colors.white,
          filled: true,
          /*suffixIcon: IconButton(
            icon: Icon(
              passwordVisible ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                passwordVisible =
                    !passwordVisible; // Cambiar la visibilidad de la contraseña
              });
            },
          ),
          */
        )),
  );
}



Widget botonEntrar(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SBottomNavigationBar()));
        },
        child: const Text("Iniciar"),
      ));
}

Widget botonRegistro(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Registro()));
        },
        child: const Text(
          "¿No tienes cuenta? Registrate",
          textAlign: TextAlign.right,
        ),
      ));
}
