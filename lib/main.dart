import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          leading: const Icon(Icons.menu),
          iconTheme: const IconThemeData(
            color: Colors.black,
            size: 40,
          ),
          title: const Center(
            child: Text(
              "Counter",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: const counter(),
      ),
    );
  }
}

class counter extends StatefulWidget {
  const counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  int nums = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: SizedBox(),
          ),
          Flexible(
            flex: 5,
            fit: FlexFit.tight,
            child: Text(
              '$nums',
              style: const TextStyle(
                fontSize: 150,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Flexible(
            flex: 5,
            fit: FlexFit.tight,
            child: IconButton(
              iconSize: 150,
              onPressed: () {
                setState(() {
                  nums++;
                });
              },
              icon: const Icon(
                Icons.add_circle_outline_rounded,
              ),
            ),
          ),
          Flexible(
            flex: 5,
            fit: FlexFit.tight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        nums = 0;
                      });
                    },
                    child: const Text(
                      "RESET",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (nums > 0) nums--;
                      });
                    },
                    child: const Text(
                      "MINUS 1",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
