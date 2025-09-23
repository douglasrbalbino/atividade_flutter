import 'package:flutter/material.dart';

class ProjectsController {
  List<String> nomesPessoas = ["Diego", "gabriel", "Gustavo", "Douglas"];

  List<dynamic> dadosPessoas = [
    "Diego",
    40,
    () {},
    true,
    Column(),
    Container(),
  ];

  List<int> idades = [3, 5, 9, 15];

  List<Map<String, dynamic>> listaGeral = [];

  Map<String, dynamic> data = {
    "nome": "Douglas Rodrigues",
    "idade": 30,
    "cpf": "123456789",
  };

  Map<String, dynamic> primeiroCard = {
    "icone": Icons.folder,
    "titulo": "App de Notas",
    "descricao": "Gerenciamento de notas dos alunos.",
    "tituloBotao": "Acessar",
  };

  List<Map<String, dynamic>> listaCards = [
    {
      "icone": Icons.folder,
      "titulo": "App de Notas",
      "descricao": "Gerenciamento de notas dos alunos.",
      "tituloBotao": "Acessar",
      "funcao": () {},
    },
    {
      "icone": Icons.settings,
      "titulo": "Configurações",
      "descricao": "Configure os itens do seu perfil.",
      "tituloBotao": "Configurar",
      "funcao": () {},
    },
    {
      "icone": Icons.person,
      "titulo": "Dados pessoais",
      "descricao": "Edite seus dados pessoais.",
      "tituloBotao": "Editar",
      "funcao": () {},
    },
    {
      "icone": Icons.alarm,
      "titulo": "Compromissos",
      "descricao": "Veja os seus comporomissos pessoais.",
      "tituloBotao": "Veja Compromissos",
      "funcao": () {},
    },
  ];
}
