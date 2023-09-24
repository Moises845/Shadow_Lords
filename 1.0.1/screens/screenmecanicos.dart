import 'package:crud_mecanicsolution/screens/screencitas.dart';
import 'package:crud_mecanicsolution/screens/screencuenta.dart';
import 'package:crud_mecanicsolution/screens/screengruas.dart';
import 'package:flutter/material.dart';

class ScreenMecanicos extends StatefulWidget{
  const ScreenMecanicos ({Key? key}) : super( key : key);

  @override
  State<ScreenMecanicos> createState() => _ScreenMecanicosState();
}

class _ScreenMecanicosState extends State<ScreenMecanicos> {
  int _paginaActual =1;
  List <Widget> paginas = [
      const ScreenCitas(),
      const ScreenMecanicos(),
      const ScreenGruas(),
      const Screencuenta(),
  ];
  @override
  Widget build (BuildContext context){
    
    return  MaterialApp(
    
    home: Scaffold(
    
    body: navegacionBar(), 
    
    )
    
    ); 
  }
  Widget navegacionBar(){
    final colors = Theme.of(context).colorScheme;
    

    

  return MaterialApp(
    home: Scaffold(
      
      appBar: AppBar(
        title: const Text("Mecanicos"),
      ),
      body: listaMecanicos(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: (index){
          setState(() {
            _paginaActual=index;
          });
        },
        currentIndex: _paginaActual,
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.calendar_month_outlined), label: "Citas", backgroundColor: colors.primary),
          BottomNavigationBarItem(icon: const Icon(Icons.search), label: "Buscar", backgroundColor: colors.tertiary,),
          BottomNavigationBarItem(icon: const Icon(Icons.car_repair_outlined), label: "Remolque", backgroundColor: colors.primary,),
          BottomNavigationBarItem(icon: const Icon(Icons.person_pin), label: "Cuenta", backgroundColor: colors.secondary,),
       ]
      ),
    )
  );
}
}

Widget listaMecanicos(){
    return ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4.0,
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.png'),
                  radius: 30.0,
                ),
                title: const Text(
                  'Raul Perez',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Edad: 25'),
                    Text('Ubicación: Juigalpa'),
                    Text('Número: +505 88645670'),
                  ],
                ),
                trailing: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star_half, color: Colors.yellow),
                  ],
                ),
              onTap: () {
                      // Agregar lógica para manejar el toque en un elemento de la lista.
              },
            ),
          );
        },
    );
}





  
    
