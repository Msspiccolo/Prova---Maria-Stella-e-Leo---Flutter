import 'package:flutter/material.dart';

class JavaCourse extends StatelessWidget {
  final List<Map<String, String>> materials = [
    {
      'title': 'Introdução ao Java',
      'subtitle': 'Material introdutório sobre a linguagem Java.',
    },
    {
      'title': 'Sintaxe Básica',
      'subtitle': 'Aprenda a sintaxe básica do Java.',
    },
    {
      'title': 'POO com Java',
      'subtitle': 'Programação Orientada a Objetos no Java.',
    },
    {
      'title': 'Estruturas de Dados',
      'subtitle': 'Trabalhando com estruturas de dados no Java.',
    },
    {
      'title': 'Exceções',
      'subtitle': 'Tratamento de exceções em Java.',
    },
    {
      'title': 'Bibliotecas Padrão',
      'subtitle': 'Usando bibliotecas padrão do Java.',
    },
    {
      'title': 'Streams e Arquivos',
      'subtitle': 'Manipulação de arquivos e streams.',
    },
    {
      'title': 'Multithreading',
      'subtitle': 'Trabalhando com threads em Java.',
    },
    {
      'title': 'Projetos Java',
      'subtitle': 'Criando e gerenciando projetos Java.',
    },
    {
      'title': 'Ferramentas de Desenvolvimento',
      'subtitle': 'Utilizando ferramentas de desenvolvimento Java.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curso Java'),        
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 39, 39),
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
                      'Professor Felipe',
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


