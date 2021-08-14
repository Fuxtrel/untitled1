import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool obscure_password_text = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    if(obscure_password_text){
      obscure_password_text = false;
    }
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      if(!obscure_password_text){
        obscure_password_text = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 30,
                    width: 240,
                    child: ElevatedButton(
                        onPressed: _incrementCounter,
                        child: const Text("Прибавить")),
                  ),
                ),
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 30,
                  width: 240,
                  child: ElevatedButton(
                      onPressed: _decrementCounter,
                      child: const Text("Убавить")),
                ),
              ),
            ]),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$_counter",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: SizedBox(
            height: 60,
            width: 480,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Email',
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: SizedBox(
            height: 60,
            width: 480,
            child: TextFormField(
              key: const Key("password"),
              obscureText: obscure_password_text,
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Password',
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
