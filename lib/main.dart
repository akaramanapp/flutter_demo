import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo/CustomerForm.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(80),
                child: Container(
                  height: 120,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    colors: [Colors.blue, Colors.green],
                  )),
                  child: SafeArea(
                      child: Center(
                    child: ListTile(
                      title: const Text("Flutter App"),
                      trailing: IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          print("Search button clicked");
                        },
                      ),
                    ),
                  )),
                )),
                body: const CustomerForm()));
  }
}
