// This widget is the root of your application.
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/home_page.dart';
import 'package:flutter_application_2/Pages/projetos_page.dart';
import 'package:flutter_application_2/Pages/right_page_router.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key, required this.title});

  final String title;

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  int _selectedIndex = 2; // 1. O índice da página de Projetos é 1

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
          SlideRightRoute(
            page: const MyHomePage(title: 'Flutter Demo Home Page'),
          ),
        );
        break;

      case 1:
        Navigator.pushReplacement(
          context,
          SlideRightRoute(page: const ProjetosPage()),
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
      body: Padding(
        padding: EdgeInsetsGeometry.only(
          left: 20,
          top: 20,
          right: 20,
          bottom: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(width: 8),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(child: Icon(Icons.person, size: 200)),
            ),
          ],
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
