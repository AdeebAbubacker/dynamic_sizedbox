import 'package:dynamic_sizedbox/dynamic_sizedbox.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo', 
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Text('Vertical spot 1 '),
              DynamicSizedBox(height: 10),
              Text(
                  "Vertical spot 2 Use 'DynamicSizedBox' for vertical spacing"),
            ],
          ),
          SizedBox(height: 50),
          Row(
            children: [
              Text('Horizonatl spot 1 '),
              DynamicSizedBox(width: 10),
              Text(
                  "Horizonatl spot 2 Use 'DynamicSizedBox' for vertical spacing"),
            ],
          ),
        ],
      ),
    );
  }
}
