import 'package:flutter/material.dart';

class PythonCourse extends StatelessWidget {
final List<Map<String, String>> materials = [
    {
      'title': 'Introdução ao Phython',
      'subtitle': 'Material introdutório sobre a linguagem Python.',
    },
    {
      'title': 'Sintaxe Básica',
      'subtitle': 'Aprenda a sintaxe de Python.',
    },
    {
      'title': 'POO com Python',
      'subtitle': 'Programação Orientada a Objetos no Python.',
    },
    {
      'title': 'Inteligência Artificial com Python',
      'subtitle': 'Usando IA em Python',
    },
    {
      'title': 'Rede Neural',
      'subtitle': 'Usando o conceito de Rede Neural em Python.',
    },
    {
      'title': 'Bibliotecas',
      'subtitle': 'Usando bibliotecas em Python.',
    },
    {
      'title': 'Arquivos',
      'subtitle': 'Manipulação de arquivos.',
    },
    {
      'title': 'APIs',
      'subtitle': 'Trabalhando com APIs em Python.',
    },
    {
      'title': 'Projetos Python',
      'subtitle': 'Criando e gerenciando projetos Python.',
    },
    {
      'title': 'Ferramentas de Desenvolvimento',
      'subtitle': 'Utilizando ferramentas de desenvolvimento Python.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curso Python'),        
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 97, 255, 39),
      ),
      body: Column(
        children: [          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person, size: 30),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Professor André',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'SISTEMAS DE INFORMAÇÃO',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
                Icon(Icons.more_vert, color: Colors.grey),
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                int crossAxisCount = constraints.maxWidth < 600 ? 1 : 2;
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    childAspectRatio: 3,
                  ),
                  itemCount: materials.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        leading: Icon(Icons.assignment, color: Colors.blue),
                        title: Text(materials[index]['title']!),
                        subtitle: Text(materials[index]['subtitle']!),
                        onTap: () {
                          // Ação ao clicar no material
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


