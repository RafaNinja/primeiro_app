import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.blue;

    Column buildButtonColumn(IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Paris - França',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Destino mais procurado da temporada',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('4.8'),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(Icons.flight, 'PACOTES'),
        buildButtonColumn(Icons.call, 'CONTATO'),
        buildButtonColumn(Icons.share, 'COMPARTILHAR'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Explore a cidade luz com nossos pacotes exclusivos. '
        'Inclui hospedagem, passeios guiados e experiências gastronômicas. '
        'Aproveite avaliações cinco estrelas e atendimento personalizado.',
        softWrap: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Mundo'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/paris.jpg',
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }
}
