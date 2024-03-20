import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        setState(() {
          _value =! _value;
        });
      },
          icon: Icon(Icons.animation),
          label: Text("Animate")),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          height: _value == false?150:350,
          width: _value == false?150:300,
          color: _value == false? Colors.deepPurple[100]:Colors.redAccent,

        ),
      ),
    );
  }
}
