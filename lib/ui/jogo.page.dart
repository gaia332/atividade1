import 'package:flutter/material.dart';
import 'package:atividade1/ui/resposta.page.dart';

class JogoPage extends StatefulWidget {
  @override
  _JogoPageState createState() => _JogoPageState();
}

class _JogoPageState extends State<JogoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFd0b4dc),
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RespostaPage(resp: 0)),
                  );
                },
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          width: 5.0, color: const Color(0xFFFFFFFF)),
                    ),
                    child: Image.asset("assets/images/pedra.png")),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RespostaPage(resp: 1)),
                  );
                },
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          width: 5.0, color: const Color(0xFFFFFFFF)),
                    ),
                    child: Image.asset("assets/images/papel.png")),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RespostaPage(resp: 2)),
                  );
                },
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          width: 5.0, color: const Color(0xFFFFFFFF)),
                    ),
                    child: Image.asset("assets/images/tesoura.png")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
