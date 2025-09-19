import 'package:flutter/material.dart';
import 'package:flutter_application_2/Config/app_colors.dart';
import 'package:flutter_application_2/Config/app_text_style.dart';

class ProjetosPage extends StatefulWidget {
  const ProjetosPage({super.key});

  @override
  State<ProjetosPage> createState() => _ProjetosPageState();
}

class _ProjetosPageState extends State<ProjetosPage> {
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

            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.folder_copy,
                            size: 30,
                            color: Colors.orange,
                          ),
                          SizedBox(width: 16),
                          Text(
                            "App de Notas",
                            style: AppTextStyle.titleAppBar.copyWith(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 45,
                        right: 30,
                        top: 10,
                      ),
                      child: Text(
                        "Aplicativo para gerenciamento de notas dos alunos do Senac.",
                        style: AppTextStyle.subtitlePage.copyWith(fontSize: 16),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.orange,
                            ),
                          ),
                          child: Text(
                            "Acessar",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
