import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Programa Layout',
      debugShowCheckedModeBanner: false,
      home: const LayoutPage(),
    );
  }
}

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programa Layout'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          // Layout Superior
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              color: Colors.purple.shade100,
              child: const Text(
                'Layout Superior',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // Conteúdo central
          Expanded(
            flex: 4,
            child: Center(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.red,
                    width: 4,
                  ),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Meu Aplicativo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Layout Inferior
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey.shade200,
              child: const Text(
                'Layout Inferior',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple,
        child: const Icon(Icons.add),
      ),
    );
  }
}