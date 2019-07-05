import 'package:flutter/material.dart';
import './namedRoute.dart';
import './route.dart';
import './passArg.dart';

void main() => runApp(HeroApp());

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition Demo',
      home: MainScreen(),
      initialRoute: '/main',
      routes: {
        '/main': (context) => MainScreen(),
        '/first': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  child: Text('Route'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return FirstRoute();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Named Route'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/first');
                  },
                ),
                RaisedButton(
                  child: Text('Pass Argument'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
