import 'package:flutter/material.dart';
import 'package:flutter_test1/components/task.dart';


class InitialScreen extends StatefulWidget {

  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreen();
}

class _InitialScreen extends State<InitialScreen> {
    bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
        leading: Container(),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 500),
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Tasks(
                  'Estudar Flutter',
                  'assets/images/dash.png',
                  3),
            ),
            Tasks(
                'Andar de Bike',
                'assets/images/bike.webp',
                3),
            Tasks(
                'Ler',
                'assets/images/livro.jpg',
                5),
            Tasks(
                'Meditar',
                'assets/images/meditar.jpeg',
                3)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
