import 'package:flutter/material.dart';
import 'package:test_drive/models/exercise_model.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final ExerciseModel exerciseModel = ExerciseModel(
      id: "EX001",
      name: "Remada Baixa Supinada",
      description: "Segura a barra e puxa",
      group: "Treino 1");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Home")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("FOI CLICADO");
          },
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Send Photo"),
              ),
              const Text(
                "Como fazer?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text(
                  "Segure com as duas mãos na barra, mantenha a coluna reta, e puxa"),
              const Divider(),
              const Text(
                "Como estou me sentindo?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text("Senti bastante ativação hoje")
            ],
          ),
        ));
  }
}
