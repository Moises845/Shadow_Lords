import 'package:flutter/material.dart';
class Screencuenta extends StatefulWidget{
  const Screencuenta ({Key? key}) : super( key : key);

  @override
  State<Screencuenta> createState() => _ScreencuentaState();
}

class _ScreencuentaState extends State<Screencuenta> {
  @override
  Widget build(BuildContext context){
    return const Center(
      child: Text("Citas")
    ); 
  }
}