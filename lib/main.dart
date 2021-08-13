

import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
  "Quem anda na integridade anda seguro, quem falseia seus caminhos será descoberto",
  "Não é bom agir sem reflexão; quem anda apressado acaba tropeçando. A insensatez faz a pessoa tropeçar e ela, depois, se exaspera contra Deus",
  "Inclina o ouvido e escuta as palavras dos sábios e aplica o coração ao meu conhecimento: essas palavras te serão preciosas, desde que as guardes no teu íntimo e elas transbordem de teus lábios",
  "Não te assustará o terror imprevisto nem o turbilhão dos ímpios sobre ti, quando vier: pois o Senhor estará ao teu lado e guardará teu pé, para não caíres na armadilha",
  "A misericórdia e a verdade não te abandonam: ata-as ao teu pescoço, inscreve-as nas tábuas do teu coração, e alcançarás graça e bom sucesso diante de Deus e dos outros",
  "Faz bem a sua alma quem é misericordioso; quem é cruel, aflige sua própria carne",
  "O temor do Senhor odeia o mal. Detesta o orgulho e a soberba, a má conduta e a boca falsa",
  "Não há sabedoria nem prudência, nem mesmo conselho, contra o Senhor. Treina-se o cavalo para o dia da batalha, mas quem dá a vitória é o Senhor",
  "O temor do Senhor é o princípio do conhecimento; sabedoria e disciplina, os tolos as desprezam",
  "Aplica teu coração ao ensino e teus ouvidos às palavras que trazem conhecimento",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase () {

    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases [numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
            ElevatedButton(
                onPressed: _gerarFrase,
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
