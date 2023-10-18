import 'package:flutter/material.dart';

import 'widgets/cronometro.dart';
import 'widgets/entrada_tempo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SizedBox(
              child: Cronometro(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(
                  title: 'Trabalho',
                  valuer: 25,
                ),
                EntradaTempo(
                  title: 'Descanso',
                  valuer: 5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
