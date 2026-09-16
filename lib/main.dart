// TP2 - DDM1 (ISW-012)
// Alunos: Pedro Togneri Lopes e Silvio Navas
// Tema: Ficha de Filme - Oppenheimer (Christopher Nolan)

import 'package:flutter/material.dart';

void main() {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Universo Nolan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: const TelaFilme(),
    );
  }
}

class TelaFilme extends StatelessWidget {
  const TelaFilme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Universo Nolan')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MoviePoster(),
            const SizedBox(height: 16),
            const Text(
              'Oppenheimer',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              'Christopher Nolan · 2023',
              style: TextStyle(color: Colors.white60),
            ),
            const SizedBox(height: 12),
            const Text(
              'A história de J. Robert Oppenheimer e o dilema moral por trás '
              'da criação da bomba atômica na Segunda Guerra Mundial.',
              style: TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 20),
            const ActionButtons(),
          ],
        ),
      ),
    );
  }
}

class MoviePoster extends StatelessWidget {
  const MoviePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      color: Colors.grey[900],
      alignment: Alignment.center,
      child: const Icon(Icons.movie, size: 90, color: Colors.white54),
    );
  }
}

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Reprodução iniciada!')),
            );
          },
          child: const Text('Assistir agora'),
        ),
        IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Adicionado à lista!')),
            );
          },
          icon: const Icon(Icons.bookmark_border, color: Colors.white),
        ),
      ],
    );
  }
}
