import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),
  ));
}

class HomeStateful extends StatefulWidget {
  const HomeStateful({Key? key}) : super(key: key);

  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  @override
  Widget build(BuildContext context) {

    var _titulo = "Rafael Brito";

    return Scaffold(
      appBar: AppBar(
        title: Text( "Frases do dia!" ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){

              },

              child: Text("Clique aqui"),

          ),
          Text("Nome: $_titulo")
        ],
      ),
    );
  }
}



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var _titulo = "Frases do dia";

    return Scaffold(
      appBar: AppBar(
        title: Text( _titulo ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text("Conteúdo Principal"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text("Texto 1"),
              Text("Texto 2"),

            ],
          ),

        ),
      ),
    );
  }
}
