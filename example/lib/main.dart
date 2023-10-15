import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:topnavigation/topnavigation.dart';
import 'package:topnavigation/topnavigationbaritem.dart';
import 'package:topnavigation/topnavigationbartheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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

  final TopNavigationBarTheme theme = const TopNavigationBarTheme(
    backgroundColor: Colors.blueGrey,
    borderRadius: 16,
    height: 50,
    margin: EdgeInsets.all(8),
    padding: EdgeInsets.all(8),
  );

  final List<TopNavigationBarItem> items = [
    TopNavigationBarItem(
      item: const Icon(
        Icons.home,
        size: 24,
        color: Colors.black,
      ),
      onPressed: () {
        log("hello");
      },
      actions: const [],
    ),
    TopNavigationBarItem(
      item: const Icon(Icons.settings, size: 24, color: Colors.black),
      onPressed: () {},
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TopNavigationBar(
        topNavigationBarTheme: theme,
        items: items,
        content: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
