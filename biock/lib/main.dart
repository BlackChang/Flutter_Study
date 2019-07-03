import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Demo'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputWidget(),
          ],
        ),
      ),
    );
  }
}$

class InputWidget extends StatefulWidget {
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  static String _text = 'DEFAULT';
  static bool _isRed = true;
  static bool _isEntered = false;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget buttonSelection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlatButton(
            color: Colors.white,
            textColor: Colors.red,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              _changeToRed();
            },
            child: Text(
              "RED",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          FlatButton(
            color: Colors.white,
            textColor: Colors.blue,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              _changeToBlue();
            },
            child: Text(
              "BLUE",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );

    Widget textSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 300,
            child: Container(
              child: Text('$_text',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: (_isRed ? Colors.red : Colors.blue),
                  ),
                  textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );

    Widget typeSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: TextField(
              controller: myController,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Text',
              ),
                          ),
          ),
          FlatButton(
            color: Colors.white,
            textColor: Colors.black,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              _entered();
            },
            child: Text(
              'ENTER',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buttonSelection,
        textSection,
        typeSection,
      ],
    );
  }

  @override
  void dispose(){
    myController.dispose();
    super.dispose();
  }

  void _changeToRed() {
    setState(() {
      _isRed = true;
    });
  }

  void _changeToBlue() {
    setState(() {
      _isRed = false;
    });
  }

  void _entered() {
    setState((){
      _isEntered = true;
      _text = myController.text;
    });
  }
}
