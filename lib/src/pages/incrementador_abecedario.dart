
import 'package:flutter/material.dart';

class IncrementadorAbecedario extends StatefulWidget {
  const IncrementadorAbecedario({Key? key}) : super(key: key);

  @override
  State<IncrementadorAbecedario> createState() => _IncrementadorAbecedarioState();
}

class _IncrementadorAbecedarioState extends State<IncrementadorAbecedario> {
  final estiloTexto = new TextStyle(fontSize: 25, color: Colors.blue);
  int contador = 65;
  String letra = "A";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Challenge #1"),
        centerTitle: true,
      ),
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$letra', style: TextStyle(fontSize: 70))
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }
  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: (){
            _decrementarAbecedario();
          },
          child: Icon(Icons.arrow_back_rounded),
        ),
        SizedBox(width: 20,),
        FloatingActionButton(
          onPressed: (){
            _incrementarAbecedario();
          },
          child: Icon(Icons.arrow_forward),
        ),

      ],
    );
  }
  void _incrementarAbecedario()=> setState(() {
    contador = contador +1;
    print("--> incre $contador");
    if (90 >= contador ){
      letra = String.fromCharCode(contador);
    }else {
      contador = 65;
      letra = String.fromCharCode(contador);
    }
  });

  void _decrementarAbecedario()=> setState(() {
    contador = contador -1;
    print("--> decre $contador");
    if (65 <= contador ){
      letra = String.fromCharCode(contador);
    }else {
      contador = 90;
      letra = String.fromCharCode(contador);
      //contador--;
    }
  });

}
