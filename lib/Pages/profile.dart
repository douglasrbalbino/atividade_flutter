// This widget is the root of your application.
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/home_page.dart';
import 'package:flutter_application_2/Pages/projetos_page.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key, required this.title});

  final String title;

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  int _selectedIndex = 1; // 1. O índice da página de Projetos é 1

  // 2. Método para lidar com o toque nos itens da barra de navegação
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // 3. Lógica de navegação
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const MyHomePage(title: 'Flutter Demo Home Page'),
          ),
        );
        break;

      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ProjetosPage()),
        ); // Já estamos na página de Projetos, então não fazemos nada
        break;

      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MyProfile(title: '')),
        );
        break;
    }
  }

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
                Icon(Icons.propane_outlined, size: 100, color: Colors.orange),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Center(
                      child: Text(
                        'Diego Áquila',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    Center(
                      child: Text(
                        'Full-stack Mobile Developer',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Building beautiful and functional apps.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 50),

                SizedBox(
                  width: 320,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      labelText: 'Email',
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 320,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40.0, top: 10.0),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),

                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Projetos'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
        currentIndex:
            _selectedIndex, // 4. 'currentIndex' recebe o valor da nossa variável de estado
        onTap: _onItemTapped,
      ),
    );
  }
}
