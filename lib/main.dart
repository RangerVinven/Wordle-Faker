import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

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
List<List<int>> colours = [[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0]];

class _MyAppState extends State<MyApp> {

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
                    const BoxRow(row: 0),
                    const SizedBox(height: 30),
                    const BoxRow(row: 1),
                    const SizedBox(height: 30),
                    const BoxRow(row: 2),
                    const SizedBox(height: 30),
                    const BoxRow(row: 3),
                    const SizedBox(height: 30),
                    const BoxRow(row: 4),
                    const SizedBox(height: 30),
                    const BoxRow(row: 5),

                    const SizedBox(height: 50),
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
  final int row;
  const BoxRow({Key? key, required this.row}) : super(key: key);

  @override
  State<BoxRow> createState() => _BoxRowState();
}

class _BoxRowState extends State<BoxRow> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RowSquare(row: widget.row, column: 0),
        SizedBox(width: 20),
        RowSquare(row: widget.row, column: 1),
        SizedBox(width: 20),
        RowSquare(row: widget.row, column: 2),
        SizedBox(width: 20),
        RowSquare(row: widget.row, column: 3),
        SizedBox(width: 20),
        RowSquare(row: widget.row, column: 4),
      ],
    );
  }
}

class RowSquare extends StatefulWidget {
  final int row;
  final int column;

  const RowSquare({Key? key, required this.row, required this.column}) : super(key: key);

  @override
  State<RowSquare> createState() => _RowSquareState();
}

class _RowSquareState extends State<RowSquare> {

  int colourNum = 0;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            // Changes the colour of the button
            colours[widget.row][widget.column] == 2 ? colours[widget.row][widget.column] = 0 : colours[widget.row][widget.column]++;
          });
        },

        child: const Text(""),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(50, 50),
          maximumSize: const Size(50, 50),
          primary: getColour(colours[widget.row][widget.column]),
          elevation: 0
        )
    );
  }
}
