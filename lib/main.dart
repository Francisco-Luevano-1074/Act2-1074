import 'package:flutter/material.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarjetas de Música',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        cardTheme: CardTheme(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.only(bottom: 12),
        ),
      ),
      home: const PaginaTarjetasMusica(),
    );
  }
}

class PaginaTarjetasMusica extends StatelessWidget {
  const PaginaTarjetasMusica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Francisco Luevano Mat:1074'),
        backgroundColor: Colors.blue.shade800,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.grey.shade100,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TarjetaMusica(
              titulo: '18 and Life',
              artista: 'Skid Row',
              estaCompletado: false,
            ),
            TarjetaMusica(
              titulo: 'Careless Whisper',
              artista: 'George Michael',
              estaCompletado: true,
            ),
            // Elementos adicionales agregados aquí
            TarjetaMusica(
              titulo: 'Sweet Child O\'Mine',
              artista: 'Guns N\' Roses',
              estaCompletado: false,
            ),
            TarjetaMusica(
              titulo: 'Livin\' On a Prayer',
              artista: 'Bon Jovi',
              estaCompletado: true,
            ),
            TarjetaMusica(
              titulo: 'Every Breath You Take',
              artista: 'The Police',
              estaCompletado: false,
            ),
          ],
        ),
      ),
    );
  }
}

class TarjetaMusica extends StatelessWidget {
  final String titulo;
  final String artista;
  final bool estaCompletado;

  const TarjetaMusica({
    super.key,
    required this.titulo,
    required this.artista,
    required this.estaCompletado,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: estaCompletado ? Colors.blue.shade50 : Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Checkbox(
              value: estaCompletado,
              onChanged: null,
              activeColor: Colors.blue.shade800,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: estaCompletado ? Colors.blue.shade800 : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'por $artista',
                    style: TextStyle(
                      fontSize: 14,
                      color: estaCompletado ? Colors.blue.shade600 : Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}