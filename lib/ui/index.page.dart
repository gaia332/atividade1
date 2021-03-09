import 'package:atividade1/ui/jogo.page.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 3, // 1/3
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF8AC7DB),
                borderRadius:
                    BorderRadius.vertical(bottom: new Radius.circular(100.0)),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/logo.png"),
                  ]),
            ),
          ),
          Flexible(
            flex: 1, // 2/3
            child: Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(100, 0, 100, 0),
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.pink),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => JogoPage()),
                    );
                  },
                  child: Text(
                    "Jogar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
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
