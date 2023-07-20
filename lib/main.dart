import 'package:flutter/material.dart';

void main(){
  runApp(BasketBall());

}
// ignore: must_be_immutable
class BasketBall extends StatefulWidget {
  @override
  State<BasketBall> createState() => _BasketBallState();
}

class _BasketBallState extends State<BasketBall> {
  int TeamA =0;

  int TeamB=0;

  void addPoint(){
    print('add one');
  }

  // const BasketBall({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Team A',style: TextStyle(fontSize: 32),),
                      Text('$TeamA',style: TextStyle(fontSize: 200),),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          minimumSize: Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            
                          });
                          TeamA++;
                          print(TeamA);
                        }, child: Text('Add 1 Point',style: TextStyle(
                          fontSize: 18,color: Colors.black
                        ),)),
                         ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          minimumSize: Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            TeamA=TeamA+2;
                          });
                          ;
                        }, child: Text('Add 2 Point',style: TextStyle(
                          fontSize: 18,color: Colors.black
                        ),)),
                         ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          minimumSize: Size(150, 50)
                        ),
                        onPressed: (){
                           setState(() {
                            TeamA=TeamA+3;
                          });
                        }, child: Text('Add 3 Point',style: TextStyle(
                          fontSize: 18,color: Colors.black
                        ),)),
                        
                    ],
                  ),
                ),
              Container(
                height: 500,
                child: VerticalDivider(
                  thickness: 1,
                  width: 20,
                  color: Colors.grey,
                  indent: 10,
                  endIndent: 315,
                ),
              ),
              Container(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Team B',style: TextStyle(fontSize: 32),),
                      Text('$TeamB',style: TextStyle(fontSize: 200),),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          minimumSize: Size(150, 50)
                        ),
                        onPressed: (
                          
                        ){
                           setState(() {
                            TeamB++;
                          });
                        }, child: Text('Add 1 Point',style: TextStyle(
                          fontSize: 18,color: Colors.black
                        ),)),
                         ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          minimumSize: Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            TeamB=TeamB+2;
                          });
                        }, child: Text('Add 2 Point',style: TextStyle(
                          fontSize: 18,color: Colors.black
                        ),)),
                         ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            TeamB=TeamB+3;
                          });
                        }, child: Text('Add 3 Point',style: TextStyle(
                          fontSize: 18,color: Colors.black
                        ),)),
                        
                    ],
                  ),
              ),
              
              ],
  
            ),
           ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50)
                      ),
                      onPressed: (){
                        setState(() {
                            TeamB=0;
                            TeamA=0;
                          });
                      }, child: Text(' Reset',style: TextStyle(
                        fontSize: 18,color: Colors.black
                      ),)),
          ],
        ),
        appBar: AppBar(title: Text('Points Counter'),
        backgroundColor: Colors.orange,),
      ),
    );
  }
}