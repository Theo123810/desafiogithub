import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atividade GitHub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String texto = "Olá, mundo!";
  Color corFundo = Colors.blue;

  void mudarTexto() {
    setState(() {
      texto = "Você clicou no botão!";
    });
  }

  void mudarCor() {
    setState(() {
      corFundo = corFundo == Colors.blue ? Colors.green : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: corFundo,
      appBar: AppBar(
        title: const Text("Atividade Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                texto,
                style: const TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              ElevatedButton.icon(
                onPressed: mudarTexto,
                icon: const Icon(Icons.text_fields),
                label: const Text("Mudar Texto"),
              ),

              const SizedBox(height: 10),

              ElevatedButton.icon(
                onPressed: mudarCor,
                icon: const Icon(Icons.color_lens),
                label: const Text("Mudar Cor"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
