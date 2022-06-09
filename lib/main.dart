import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // Returns the colour to set each square to
  Color getColour(int colourNum) {
    if (colourNum == 0) {
      return Colors.grey;
    } else if (colourNum == 1) {
      return Colors.yellow;
    } else {
      return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Wordle Faker",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BoxRow(),
                    SizedBox(height: 30),
                    BoxRow(),
                    SizedBox(height: 30),
                    BoxRow(),
                    SizedBox(height: 80),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.black
                      ),
                      child: const Text(
                        "Share",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                        ),
                      )
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}

class BoxRow extends StatefulWidget {
  const BoxRow({Key? key}) : super(key: key);

  @override
  State<BoxRow> createState() => _BoxRowState();
}

class _BoxRowState extends State<BoxRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RowSquare(),
        SizedBox(width: 20),
        RowSquare(),
        SizedBox(width: 20),
        RowSquare(),
      ],
    );
  }
}

class RowSquare extends StatefulWidget {
  const RowSquare({Key? key}) : super(key: key);

  @override
  State<RowSquare> createState() => _RowSquareState();
}

class _RowSquareState extends State<RowSquare> {
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: const Text(""),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(100, 100),
          maximumSize: const Size(100, 100),
          primary: Colors.grey,
          elevation: 0
        )
    );
  }
}
