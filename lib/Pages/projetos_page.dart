import 'package:flutter/material.dart';
import 'package:flutter_application_2/Config/app_colors.dart';
import 'package:flutter_application_2/Config/app_text_style.dart';
import 'package:flutter_application_2/Controllers/projects_controller.dart';
import 'package:flutter_application_2/Pages/custom_page_router.dart';
import 'package:flutter_application_2/Pages/home_page.dart';
import 'package:flutter_application_2/Pages/profile.dart';
import 'package:flutter_application_2/Pages/right_page_router.dart';
import 'package:flutter_application_2/Widgets/project_cards.dart';

class ProjetosPage extends StatefulWidget {
  const ProjetosPage({super.key});

  @override
  State<ProjetosPage> createState() => _ProjetosPageState();
}

class _ProjetosPageState extends State<ProjetosPage> {
  ProjectsController projectsController = ProjectsController();
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
          SlideRightRoute(page: const MyHomePage(title: ' ')),
        );
        break;

      case 2:
        Navigator.push(
          context,
          SlideLeftRoute(page: const MyProfile(title: '')),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroudColorPages,

      appBar: AppBar(
        title: Text("Meus Projetos", style: AppTextStyle.titleAppBar),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Gerenciar projetos", style: AppTextStyle.subtitlePage),
              ...projectsController.listaCards.map((card) {
                return ProjectCards(
                  iconeCard: card['icone'],
                  tituloCard: card['titulo'],
                  descricaoCard: card['descricao'],
                  tituloBotao: card['tituloBotao'],
                  funcao: card['funcao'],
                );
              }),
            ],
          ),
        ),
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
