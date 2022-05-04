
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "StateLess",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String nome = "";
  @override
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(title: Text("Seja bem-vindo(a)"), content: Text(nome),
        actions: [
          TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              }
        )
        ], );
      },
    );
  }


  Widget build(BuildContext context){
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Estudando Statefull"),
              centerTitle: true,
            ),
            body: Center(
                child: Container(
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Insira seu nome: ",
                          ),
                          onSubmitted: (String str){
                            setState(() {
                              nome = str;
                            });
                          },
                        ),
                        TextButton(
                          onPressed: (){
                            _showDialog(context);
                          },
                            child: const Text("Aqui"))
                      ],
                    )
                )
            )
        )
    );
  }

}
