import 'package:flutter/material.dart';
import 'package:flutter_application_2/Config/app_colors.dart';
import 'package:flutter_application_2/Config/app_text_style.dart';
import 'package:flutter_application_2/Pages/home_page.dart';
import 'package:flutter_application_2/Pages/profile.dart';
import 'package:flutter_application_2/Widgets/project_cards.dart';

class ProjetosPage extends StatefulWidget {
  const ProjetosPage({super.key});

  @override
  State<ProjetosPage> createState() => _ProjetosPageState();
}

class _ProjetosPageState extends State<ProjetosPage> {
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
      backgroundColor: AppColors.backgroudColorPages,

      appBar: AppBar(
        title: Text("Meus Projetos", style: AppTextStyle.titleAppBar),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Gerenciar projetos", style: AppTextStyle.subtitlePage),

            ProjectCards(
              iconeCard: Icons.folder,
              tituloCard: "App de Notas",
              descricaoCard: "Gerenciamento de notas dos alunos.",
              tituloBotao: "Acessar",
              funcao: () {},
            ),

            SizedBox(height: 10),

            ProjectCards(
              iconeCard: Icons.folder,
              tituloCard: "API de ChatBot",
              descricaoCard: "API desenvolvida para uso do chatbot.",
              tituloBotao: "Acessar",
              funcao: () {},
            ),

            SizedBox(height: 10),

            ProjectCards(
              iconeCard: Icons.sports_soccer_rounded,
              tituloCard: "Ronaldo",
              descricaoCard: "Você é o Ronaldo?",
              tituloBotao: "Certeza?",
              funcao: () {},
            ),

            SizedBox(height: 10),
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
        onTap:
            _onItemTapped, // 6. 'onTap' chama nosso método para atualizar o estado
        // 6. 'onTap' chama nosso método para atualizar o estado
      ),
    );
  }
}
