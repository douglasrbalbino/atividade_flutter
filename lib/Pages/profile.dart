// This widget is the root of your application.
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/custom_page_router.dart';
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
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // 3. Lógica de navegação
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          SlideLeftRoute(page: const MyHomePage(title: '')),
        ); // Já estamos na página de Projetos, então não fazemos nada
        break;

      case 1:
        Navigator.push(context, SlideRightRoute(page: const ProjetosPage()));
        break;
    }
  }
  // 2. Método para lidar com o toque nos itens da barra de navegação

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.logout, size: 30, color: Colors.orange),
                  tooltip: 'Sair', // Opcional: melhora a acessibilidade
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage(title: ''),
                      ),
                      (Route<dynamic> route) => false,
                    );
                  },
                ),
                Text("Sair"),
              ],
            ),
          ),

          Container(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        border: Border.all(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          width: 8,
                        ),
                      ),
                      child: Center(
                        child: Container(child: Icon(Icons.person, size: 150)),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Gustavo Barros",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Desenvolvedor Mobile Full-Stack",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  Text("Construindo aplicativos bonitos e funcionais."),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 50, bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Projetos"),
                      ),
                      Text(
                        "25",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Conexões:"),
                      ),
                      Text(
                        "120",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Comentarios:"),
                      ),
                      Text(
                        "400+",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Login'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
        currentIndex:
            _selectedIndex, // 4. 'currentIndex' recebe o valor da nossa variável de estado
        onTap: _onItemTapped,
      ),
    );
  }
}
