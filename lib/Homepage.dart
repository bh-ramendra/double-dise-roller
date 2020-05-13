

import 'package:flutter/material.dart';
import 'dart:math';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  AssetImage one = AssetImage("images/one.png");

  AssetImage two = AssetImage("images/two.png");
  
  AssetImage three = AssetImage("images/three.png");
  
  AssetImage four = AssetImage("images/four.png");
  
  AssetImage five = AssetImage("images/five.png");
  
  AssetImage six = AssetImage("images/six.png");
  
 

   AssetImage diceimage1;
   AssetImage diceimage2;



   @override
  void initState() {
    super.initState();
    setState(() {
      diceimage1=one;
      diceimage2=two;
    });
  }
 

 void rollDice(){
   int random1 = (Random().nextInt(6))+1;
   int random2 = (Random().nextInt(6))+1;

   AssetImage newImage1,newImage2;

   switch (random1) {
     case 1:
     newImage1=one;
       break;
       case 2:
     newImage1=two;
       break;
       case 3:
     newImage1=three;
       break;
       case 4:
     newImage1=four;
       break;
       case 5:
     newImage1=five;
       break;
       case 6:
     newImage1=six;
       break;
     
   }
   switch (random2) {
     case 1:
     newImage2=one;
       break;
       case 2:
     newImage2=two;
       break;
       case 3:
     newImage2=three;
       break;
       case 4:
     newImage2=four;
       break;
       case 5:
     newImage2=five;
       break;
       case 6:
     newImage2=six;
       break;
     
   }

 
  setState(() {
    diceimage1=newImage1;
    diceimage2=newImage2;
    
  });
 }
 
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dise roller'),
        ),
        body: Container(
          color: Colors.black,
          
          child: Center (
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
          
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    
                    Image(
                      image: diceimage1,
                      width: 150,
                      height: 150,),
                      Image(
                        image: diceimage2,
                        height: 150,
                        width: 150,
                        ),
                        
                  ],
                  ),
                 Container(
                   margin: EdgeInsets.only(top:100.0),
                   child: RaisedButton(
                     color:Colors.black,
                     splashColor: Colors.yellowAccent,
                     textColor: Colors.yellowAccent,

                     
                     padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                     child: Text('Roll the dise',style: TextStyle(),
                     ),
                      onPressed: () {
                        rollDice();

                      },
                      elevation: 30.0,
                     
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)
                      ),
                     ),
                    )
              ],
              ),
          ),
        ),
    );
  }
}