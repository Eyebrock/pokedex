import 'package:flutter/material.dart';
import 'package:pokedex/provider/flags.dart';
import 'package:pokedex/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const PokedexApp());
}

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: HomeScreen()
  //   );
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FlagosProvider())
      ],
      child: const PMSNApp(),
    );
  }
}
class PMSNApp extends StatelessWidget {
  const PMSNApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(

      home: HomeScreen(),
    );
  }
}
