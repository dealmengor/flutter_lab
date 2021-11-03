import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Challenge 2',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'Challenge 2'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          _backGroundImage(),
          _centralText(),
        ],
      ),
    );
  }

  Widget _backGroundImage() {
    return const Image(
      image: AssetImage('assets/images/Panama.jpg'),
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget _centralText() {
    return Center(
      child: Container(
        height: 100,
        color: const Color.fromRGBO(0, 0, 0, 0.5),
        child: const Center(
          child: Text("This is Panama, it's more than just papers...",
              style: TextStyle(fontSize: 30, color: Colors.white)),
        ),
      ),
    );
  }
}
