import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Contador(),
    ) 
  );
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {

  int contador = 0;
  String aviso = "";

 void increment(){
  setState(() {
      contador++;
      aviso = "";
      if(contador > 30){
        contador = 30;
        aviso = "Tá cheio parcero";
      }

  });
    //print("Incremento");
    //txt = "Incremento";
  } 
  void decrement(){
  setState(() {
      contador--;
      aviso = "";
      if(contador < 0){
        contador = 0;
        aviso = "Não tem como sair gente se não tiver ninguém";
      }

  });    //print("Decremento");
    //txt = "Decremento";
  } 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center ,
        children: [
          Text(contador==30?"Casa cheia":"Pode entrar", style: TextStyle(fontSize: 30.0, color: Color(0xffffffff),),),
          Text(contador.toString(), style: TextStyle(fontSize: 100.0, color: Color(0xffffffff)),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(backgroundColor: Colors.white,
                fixedSize: const Size(100,100),
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(24))),
                child: const Text("ENTRAR", style: TextStyle(fontSize:16.0, color: Colors.black,))),
              
              const SizedBox(width:64,),
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(backgroundColor: Colors.white, 
                fixedSize: const Size(100,100), 
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),
                child: const Text("SAIR", style: TextStyle(fontSize:16.0, color: Colors.black))),
            ],
          ),
          Text(aviso, style: TextStyle(fontSize: 15.0,color: Color(0xffffffff)),)

        ],

        
      ),
      backgroundColor: const Color.fromARGB(223, 255, 0, 140),
    );
  }
}

