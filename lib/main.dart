import 'package:flutter/cupertino.dart';
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
    if (obscure_password_text) {
      obscure_password_text = false;
    }
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      if (!obscure_password_text) {
        obscure_password_text = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 229, 229),
      body: Center(
        child: Container(
          width: 1280,
          height: 780,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 720,
                height: 780,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 78, 0, 50),
                      child: Text(
                        'Вход в учётную запись',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Container(
                        height: 60,
                        width: 480,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                            )
                          ],
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Email',
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 25),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Container(
                        height: 60,
                        width: 480,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                            )
                          ],
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: TextField(
                            obscureText: obscure_password_text,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Password',
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 25),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 266, 0, 0),
                      child: SizedBox(
                        height: 60,
                        width: 330,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              // side:
                              //     BorderSide(color: Colors.red)
                            ))),
                            onPressed: _incrementCounter,
                            child: const Text("Прибавить")),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 560,
                height: 780,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 408, 0, 0),
                    child: SizedBox(
                      height: 60,
                      width: 330,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            // side:
                            //     BorderSide(color: Colors.red)
                          ))),
                          onPressed: _decrementCounter,
                          child: const Text("Убавить")),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
