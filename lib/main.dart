import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*
Stateless: widgets que não podem ser alterados. (constantes)
Statefull: widgets que podem ser alterados (variáveis)

*/
void main (){

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeStateful()
  ));
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
   var _nome = "João Pedro";
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: AppBar(
        title:Text("Principal"),
        backgroundColor: Colors.green,

      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              onPressed:(){
               setState(() {
                 _nome = "Curso flutter";
               });
              },
              child: Text("Clique aqui"),
            ),
            Text("nome: $_nome")
          ],
        ),
      ),
      
      );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

    
    //return ;
  }
}