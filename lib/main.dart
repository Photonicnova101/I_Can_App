//appicon.co for app icon generator
//draw.io for a structure whiteboard for idea generating and pseudo code

//if you type stless then tab or sumthin then flutter createes a stateless widget

//other resources for images
//icons8.com , vecteezy.com , or just use photoshop
import 'package:flutter/material.dart';
import 'package:i_can_app/wash_hands_pg.dart';
import 'package:i_can_app/brush_your_teeth_pg.dart';
import 'package:i_can_app/make_your_bed_pg.dart';
import 'package:i_can_app/getting_dressed_pg.dart';
import 'package:i_can_app/comb_your_hair_pg.dart';
import 'package:i_can_app/do_your_homework_pg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title:'I Can ____',
      
      theme:ThemeData(
        primaryColorDark:Colors.black,
        fontFamily: 'BubblegumSans',
        accentColor: Colors.redAccent[700],
        backgroundColor:Colors.white
      ),
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
          title: Text("I Can ____"),
        ),
        body: GridView.count(
  primary: false,
  padding: const EdgeInsets.all(15),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
    Container(
      padding: const EdgeInsets.all(8),
      child: SizedBox.expand(
        child: TextButton(
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => WashHandsStageTwo(),
                  ),
                );
        },
        child: Image.asset(
          'images/wash_hands_front.PNG')
        ) 
      
      ),
      color: Colors.teal[100],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: SizedBox.expand( //brush your teeth button
        child: TextButton(
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => BrushTeethStageTwo(),
                  ),
                );
        },
        child: Image.asset(
          'images/brush_teeth.PNG')
        ) 
      
      ),
      color: Colors.teal[200],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: SizedBox.expand( //make your bed
        child: TextButton(
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => MakeBedStageTwo(),
                  ),
                );
        },
        child: Image.asset(
          'images/make_your_bed_front.PNG')
        ) 
      
      ),
      color: Colors.teal[300],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: SizedBox.expand( //getting dressed 
        child: TextButton(
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => GettingDressedStageTwo(),
                  ),
                );
        },
        child: Image.asset(
          'images/getting_dressed_front.PNG')
        ) 
      
      ),
      color: Colors.teal[400],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: SizedBox.expand( //come your hair
        child: TextButton(
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => CombHairStageTwo(),
                  ),
                );
        },
        child: Image.asset(
          'images/comb_your_hair_front.PNG')
        ) 
      
      ),
      color: Colors.teal[500],
    ),
    Container(
      padding: const EdgeInsets.all(6),
      child: SizedBox.expand( //do your homework
        child: TextButton(
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => DoHomeworkStageTwo(),
                  ),
                );
        },
        child: Image.asset(
          'images/do_your_homework_front.PNG')
        ) 
      
      ),
      color: Colors.teal[600],
    ),
  ],
),
);


    }
}

//Victory Screen
class SuccessScreen extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFF65b8e5),
      appBar: new AppBar(
        title: new Text("Nice Job"),
      ),
      body:
         Center(
           child: Container(
             child: SizedBox.expand(
               child: TextButton(
                 onPressed:(){
                   Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
                 },
               child: Image.asset('images/success_screen.png'),
                 ),
             )),)
    );
  }
}


