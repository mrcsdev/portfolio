import 'package:flutter/material.dart';
import 'package:portfolio_example/projeto_model.dart';

import 'projeto_detalhe.dart';

class ProjectsScreen extends StatelessWidget {
  final List<Project> projects = [
    Project(
        'Contador de Pessoas',
        'https://github.com/umaraqueli/simple_people_counter',
        'assets/contador_de_pessoas.png',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id dui nec urna vestibulum lacinia eu ut nisi. Nunc nec lacinia nisl. In hac habitasse platea dictumst. Nullam et malesuada justo. Integer vehicula enim eget lectus ullamcorper, a vulputate velit cursus. Quisque id orci quis turpis feugiat tristique eu eu elit. Curabitur non arcu vel lacus dapibus posuere vitae ut sem. Ut vitae metus vel elit bibendum cursus. Morbi eu enim ac velit bibendum laoreet id nec metus. Fusce convallis purus at neque tempor, eu tristique justo consequat.'),
    Project(
        'Calculadora de Maioridade',
        'https://github.com/umaraqueli/maiority_calculator',
        'assets/maioridade.png',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id dui nec urna vestibulum lacinia eu ut nisi. Nunc nec lacinia nisl. In hac habitasse platea dictumst. Nullam et malesuada justo. Integer vehicula enim eget lectus ullamcorper, a vulputate velit cursus. Quisque id orci quis turpis feugiat tristique eu eu elit. Curabitur non arcu vel lacus dapibus posuere vitae ut sem. Ut vitae metus vel elit bibendum cursus. Morbi eu enim ac velit bibendum laoreet id nec metus. Fusce convallis purus at neque tempor, eu tristique justo consequat.'),
    Project(
        'Calculadora de Média de Notas',
        'https://github.com/umaraqueli/media_program_to_debug',
        'assets/media.png',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id dui nec urna vestibulum lacinia eu ut nisi. Nunc nec lacinia nisl. In hac habitasse platea dictumst. Nullam et malesuada justo. Integer vehicula enim eget lectus ullamcorper, a vulputate velit cursus. Quisque id orci quis turpis feugiat tristique eu eu elit. Curabitur non arcu vel lacus dapibus posuere vitae ut sem. Ut vitae metus vel elit bibendum cursus. Morbi eu enim ac velit bibendum laoreet id nec metus. Fusce convallis purus at neque tempor, eu tristique justo consequat.'),
    Project(
        'Lançador de Dados',
        'https://github.com/umaraqueli/dice_roller',
        'assets/dados.png',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id dui nec urna vestibulum lacinia eu ut nisi. Nunc nec lacinia nisl. In hac habitasse platea dictumst. Nullam et malesuada justo. Integer vehicula enim eget lectus ullamcorper, a vulputate velit cursus. Quisque id orci quis turpis feugiat tristique eu eu elit. Curabitur non arcu vel lacus dapibus posuere vitae ut sem. Ut vitae metus vel elit bibendum cursus. Morbi eu enim ac velit bibendum laoreet id nec metus. Fusce convallis purus at neque tempor, eu tristique justo consequat.'),
    Project(
        'Lista de Tarefas Com Hive',
        'https://github.com/umaraqueli/list_tasks_with_hive',
        'assets/crud.png',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id dui nec urna vestibulum lacinia eu ut nisi. Nunc nec lacinia nisl. In hac habitasse platea dictumst. Nullam et malesuada justo. Integer vehicula enim eget lectus ullamcorper, a vulputate velit cursus. Quisque id orci quis turpis feugiat tristique eu eu elit. Curabitur non arcu vel lacus dapibus posuere vitae ut sem. Ut vitae metus vel elit bibendum cursus. Morbi eu enim ac velit bibendum laoreet id nec metus. Fusce convallis purus at neque tempor, eu tristique justo consequat.'),
    Project(
        'Previsão do Tempo Com API',
        'https://github.com/umaraqueli/weather-search',
        'assets/previsao.png',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id dui nec urna vestibulum lacinia eu ut nisi. Nunc nec lacinia nisl. In hac habitasse platea dictumst. Nullam et malesuada justo. Integer vehicula enim eget lectus ullamcorper, a vulputate velit cursus. Quisque id orci quis turpis feugiat tristique eu eu elit. Curabitur non arcu vel lacus dapibus posuere vitae ut sem. Ut vitae metus vel elit bibendum cursus. Morbi eu enim ac velit bibendum laoreet id nec metus. Fusce convallis purus at neque tempor, eu tristique justo consequat.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Meus Projetos'),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: projects.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProjectDetailsScreen(
                        project: projects[index],
                      ),
                    ),
                  );
                },
                child: ListTile(
                  contentPadding: EdgeInsets.all(16),
                  title: Row(
                    children: [
                      Hero(
                        tag: projects[index].image,
                        child: Image.asset(
                          projects[index].image,
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              projects[index].name,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              projects[index].githubLink,
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
