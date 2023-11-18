import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Currículo'),
        ),
        body: Ink(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              /* image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('assets/images/logo.png'),
                ),*/
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.white24, Colors.blueGrey.shade200])),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Experiência Profissional',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                    'Desenvolvedora Flutter\nEmpresa TEOREMA SISTEMAS\n Abril 2018 - Presente\n'),
                SizedBox(height: 10),
                Text(
                    'Analista de Suporte\nEmpresa RP INFO\nJunho 2017 - Janeiro 2018\n'),
                Text(
                    'Analista Financeira / Suporte de Hardware\nEmpresa Benderplast LTDA\nAgosto 2013 - Maio 2017\n'),
                SizedBox(height: 20),
                Row(children: <Widget>[
                  const Expanded(
                      child: Divider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 1,
                    color: Colors.white,
                  )),
                  Icon(
                    Icons.auto_awesome_rounded,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  const Expanded(
                      child: Divider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 1,
                    color: Colors.white,
                  )),
                ]),
                Text(
                  'Educação',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Pós Graduação Desenvolvimento de Aplicações Web e Mobile\nFaculdade Guairacá\n2019 - 2021',
                ),
                SizedBox(height: 10),
                Text(
                  'Graduação Análise e Desenvolvimento de Sistemas\nFaculdade Guairacá\n2015 - 2017',
                ),
                SizedBox(height: 10),
                Text(
                  'Técnico em Informática\nEnsino Médio\n2010 - 2014',
                ),
              ],
            ),
          ),
        ));
  }
}
