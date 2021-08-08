import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:i_can_app/main.dart';

class WashHandsStageTwo extends StatefulWidget {
  @override
  WashHandsPg createState() => WashHandsPg();
  
}


class WashHandsPg extends State<WashHandsStageTwo>{
  double percent = 0.0;

  @override
  void initState() {
    Timer timer;
    timer = Timer.periodic(Duration(milliseconds:3000),(_){
      setState(() {
        percent+=10;
        if(percent >= 100){
          timer.cancel();
          // percent=0;
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SuccessScreen()),
  );
        }
      });
    });
    super.initState();
  }
    @override
    Widget build(BuildContext context) {
      
        return Scaffold(
        backgroundColor: Colors.cyan[600],
        appBar: AppBar(
          backgroundColor: Colors.cyan[600],
          toolbarHeight: 70,
          title: Text("Let's wash our hands", style: TextStyle(fontSize: 26.0, fontFamily: 'Bubbly')),
          leading: IconButton(icon:Icon(Icons.home),
          onPressed: () {
            Navigator.of(context).push(
                  // I had to replace the default back button because there was memory leakage due
                  //to the LinearpercentIndicator widget state still being updated even though we weren't on the page
                  //keep in mind when making stateful widgets
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
                },
        ),
        ),
        body: 
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

  children: <Widget>[
    Container(
      width: 50,
      height: 300,
      padding: const EdgeInsets.all(5),
      child: SizedBox.expand(
        child: TextButton(
          //textButton for no reason, i used to have an onpressed command, but i chose to remove it
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: null,
          
        child: Image.asset(
          'images/good_wash_hands_gif.gif')
        ) 
      
      ),
      color: Colors.teal[100],
    ),
    Container(
      padding: const EdgeInsets.all(10),
      margin: EdgeInsets.only(left:30,right:30),
      alignment:Alignment.center,
      child: LinearPercentIndicator( //leaner progress bar
        animation: true,
        animationDuration: 3000,
        lineHeight: 50.0,
        percent:percent/100,
        center: Text(
          percent.toString() + "%",
          style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: Colors.blue[400],
        backgroundColor: Colors.grey[300],
      ),
    ),
    Container(

      child: Text("GO GO GO WASH YOUR HANDS FOR 30 SECS AND REMEMBER TO WASH WITH SOAP", style: TextStyle(color: Colors.white, fontFamily: 'BubblegumSans', fontSize: 40),),
    ),
  ],
),
);
    }
}

