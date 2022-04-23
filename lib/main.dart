import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class MyFirstWidget extends StatelessWidget {
  MyFirstWidget({Key? key}) : super(key: key);
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    counter++;
    print("In build $counter");
    return Container(
      child: Center(
        child: Text("I was rebuilt $counter times"),
      ),
    );
  }
}

class MyFirstStfulWidget extends StatefulWidget {
  const MyFirstStfulWidget({Key? key}) : super(key: key);

  @override
  State<MyFirstStfulWidget> createState() => _MyFirstStfulWidgetState();
}

class _MyFirstStfulWidgetState extends State<MyFirstStfulWidget> {
  int counter = 0;

  getContext(){
    return context.runtimeType;
  }

  @override
  Widget build(BuildContext context) {
    counter++;
    print("In build $counter");
    return Container(
      child: Center(
        child: Text("I was rebuilt: $counter times",
        ),
      ),
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Title',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyFirstStfulWidget(),
    );
  }
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFirstStfulWidget(),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
