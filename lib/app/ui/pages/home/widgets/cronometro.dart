import 'package:flutter/material.dart';

import 'cronometro_botao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          const Text('25:00',
              style: TextStyle(
                fontSize: 120,
                color: Colors.white,
              )),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CronometroBotao(
                  texto: 'Iniciar',
                  icone: Icons.play_arrow,
                  click: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CronometroBotao(
                  texto: 'Parar',
                  icone: Icons.stop,
                  click: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CronometroBotao(
                  texto: 'Reiniciar',
                  icone: Icons.refresh,
                  click: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
