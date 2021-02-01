import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sudoku App',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.red,
        ),
        fontFamily: 'Raleway',
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sudoku Game',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            )),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      side: BorderSide(color: Colors.red),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('New Sudoku'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SudokuPuzzle()),
                      );
                    }),
                FlatButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(color: Colors.red),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SudokuSolver()),
                    );
                  },
                  child: Text('Sudoku Solver'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                      )),
                ),
          ])),
    );
  }
}

class SudokuPuzzle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is the Sudoku Puzzle Page'),
      ),
    );
  }
}

class SudokuSolver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('This is the Sudoku Solver Page'),
    ));
  }
}
