import 'package:flutter/material.dart';

class FlutterCourse extends StatelessWidget {
 final List<Map<String, String>> materials = [
    {
      'title': 'O que é framework?',
      'subtitle': 'Lidando com Frameworks.',
    },
    {
      'title': 'Flutter é uma linguagem de programação?',
      'subtitle': 'Frameworks ou Linguagem?.',
    },
    {
      'title': 'Introdução ao Flutter',
      'subtitle': 'Utilização de frameworks .',
    },
    {
      'title': 'Qual a linguagem de programação usada em flutter?',
      'subtitle': 'Introdução ao dart.',
    },
    {
      'title': 'Multiplataforma',
      'subtitle': 'Modelos Hibridos.',
    },
    {
      'title': 'Linguagem Orientada a Objetos',
      'subtitle': 'Similariedade de dart com Java.',
    },
    {
      'title': 'Configuração de Ambiente',
      'subtitle': 'Utilização de IDEs',
    },
    {
      'title': 'Estrutura de Arquivos e pastas',
      'subtitle': 'Pastas e arquivos e telas de aplicação.',
    },
    {
      'title': 'Flutter e API',
      'subtitle': 'Integrando API em flutter.',
    },
    {
      'title': 'Criando um projeto flutter',
      'subtitle': 'Desenvolvendo um app em flutter',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curso Flutter'),        
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 39, 50, 255),
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


