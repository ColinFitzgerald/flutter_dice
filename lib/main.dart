// Import System Libraries
import 'package:flutter/material.dart';
import 'dart:math';

// Main entry point to our app program.
void main() {
  // Create and run...
  return runApp(
    // ...a material app...
    MaterialApp(
      // ...consisting of a scaffold to hold our...
      home: Scaffold(
        backgroundColor: Colors.red,
        // ...app bar...
        appBar: AppBar(
          title: Text('Flutter Dice'),
          backgroundColor: Colors.red,
        ),
        // ...and the main body of our application.
        body: DicePage(),
      )
    )
  ); // runApp()
} // main


// Main widget for our application.
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}


// The state object for our main application widget.
class _DicePageState extends State<DicePage> {
  // Create and initialize variables to hold our application state.
  int leftDiceNumber  = 1;
  int rightDiceNumber = 1;

  void rollDice() {
    setState(() {
      leftDiceNumber  = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;

      print('Left dice number changed to $leftDiceNumber');
      print('Right dice number changed to $rightDiceNumber');
    });
  } // rollDice()


  // Here is the method that builds or paints our main application widget.
  @override
  Widget build(BuildContext context) {
    // Start off with a centering widget...
    return Center(
      // ...then put our two dice inside of a row...
      child: Row(
        children: [
          // ...we want each dice to take as much room as possible...
          Expanded(
            // ...and also be interactive...
            child: FlatButton(
              onPressed: () {
                print('Left button pressed!');

                // ...when the left dice is pressed by the user, re-roll both dice...
                rollDice();
              },

              // ...and make sure we update the dice image for the user.
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),

          // ...we want each dice to take as much room as possible...
          Expanded(
            // ...and also be interactive...
            child: FlatButton(
              onPressed: () {
                print('Right button pressed!');

                // ...when the left dice is pressed by the user, re-roll both dice...
                rollDice();
              },

              // ...and make sure we update the dice image for the user.
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  } // build
} // DicePage

// End of file.
