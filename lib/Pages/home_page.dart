// This widget is the root of your application.
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.flutter_dash, size: 100, color: Colors.orange),
                RichText(
                  text: TextSpan(
                    // Estilo base para todo o texto, que será herdado
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      // O primeiro TextSpan para a palavra "Diego" com a cor laranja
                      TextSpan(
                        text: 'Diego ',
                        style: TextStyle(color: Colors.orange),
                      ),
                      // O segundo TextSpan para a palavra "Aquila" com a cor azul
                      TextSpan(
                        text: 'Aquila',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
