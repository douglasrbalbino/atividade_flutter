import 'package:flutter/material.dart';
import 'package:flutter_application_2/Config/app_text_style.dart';

class ProjectCards extends StatelessWidget {
  final IconData iconeCard;
  final String tituloCard;
  final String descricaoCard;
  final String tituloBotao;
  final VoidCallback funcao;

  const ProjectCards({
    super.key,
    required this.iconeCard,
    required this.tituloCard,
    required this.descricaoCard,
    required this.tituloBotao,
    required this.funcao,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Icon(iconeCard, size: 30, color: Colors.orange),
                    SizedBox(width: 16),
                    Text(
                      tituloCard,
                      style: AppTextStyle.titleAppBar.copyWith(fontSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, right: 30, top: 10),
                child: Text(
                  descricaoCard,
                  style: AppTextStyle.subtitlePage.copyWith(fontSize: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    // width: 110,
                    child: ElevatedButton(
                      onPressed: funcao,
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(8),
                          ),
                        ),
                        backgroundColor: WidgetStatePropertyAll(Colors.orange),
                      ),
                      child: Text(
                        tituloBotao,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
