import 'package:flutter/material.dart';
import 'package:atividade1/ui/jogo.page.dart';
import 'dart:math';

class RespostaPage extends StatefulWidget {
  final int resp;

  RespostaPage({Key key, @required this.resp}) : super(key: key);

  @override
  _RespostaPageState createState() => _RespostaPageState(resp);
}

class _RespostaPageState extends State<RespostaPage> {
  int numero;
  int numUsu;
  String compRes;
  String usuRes;
  String res;

  _RespostaPageState(int resp) {
    this.numUsu = resp;
  }

  void setImages() {
    var rand = Random();
    this.numero = rand.nextInt(3);

    switch (this.numero) {
      case 0:
        this.compRes = 'assets/images/pedra.png';
        break;
      case 1:
        this.compRes = 'assets/images/papel.png';
        break;
      case 2:
        this.compRes = 'assets/images/tesoura.png';
        break;
    }

    switch (this.numUsu) {
      case 0:
        this.usuRes = 'assets/images/pedra.png';
        break;
      case 1:
        this.usuRes = 'assets/images/papel.png';
        break;
      case 2:
        this.usuRes = 'assets/images/tesoura.png';
        break;
    }
  }

  void result() {
    if (this.numUsu == this.numero) {
      this.res = "Empatou!";
    } else {
      switch (numUsu) {
        case 0:
          if (this.numero == 2) {
            this.res = "Você Venceu!";
          } else {
            this.res = "Você Perdeu!";
          }
          break;
        case 1:
          if (this.numero == 0) {
            this.res = "Você Venceu!";
          } else {
            this.res = "Você Perdeu!";
          }
          break;
        case 2:
          if (this.numero == 1) {
            this.res = "Você Venceu!";
          } else {
            this.res = "Você Perdeu!";
          }
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    setImages();
    result();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text("Usuário:"),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          width: 5.0, color: const Color(0xFFFFFFFF)),
                    ),
                    child: Image.asset("$usuRes"),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: Container(
                  child: Text(
                "VS",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                ),
              )),
            ),
          ),
          Flexible(
            flex: 2,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Container(
                      child: Text("Computador:"),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            width: 5.0, color: const Color(0xFFFFFFFF)),
                      ),
                      child: Image.asset("$compRes"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: Container(
                  child: Text(
                "$res",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 70,
                ),
              )),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Color(0xFF8AC7DB),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.pink),
                ),
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => JogoPage()),
                  );
                },
                child: Text(
                  "Tentar novamente",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
