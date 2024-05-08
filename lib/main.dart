import 'package:flutter/material.dart';
import 'package:noodlot_spel/pages/menu_and_extra.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ontkom het Noodlot',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: homePage,
    );
  }
}

//State variables
class GameState {
  static bool certificaat = true;
}
