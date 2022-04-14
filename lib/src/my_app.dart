
import 'package:challenge_01_morga_sergio/src/pages/incrementador_abecedario.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Center(
          child: IncrementadorAbecedario(),
      ),
    );
  }
}
