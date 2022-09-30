import 'package:flutter/material.dart';

class BoxingPage extends StatefulWidget {
  const BoxingPage({Key? key}) : super(key: key);

  @override
  State<BoxingPage> createState() => _BoxingPageState();
}

class _BoxingPageState extends State<BoxingPage> {
  int count=0;
  int ScoreRed = 0;     int ReslutRed = 0;
  int ScoreBlue = 0;    int ReslutBlue = 0;
  var Round1 = '';  var Round2 = '';  var Round3 = '';
  var Blue1 = '';   var Blue2 = '';   var Blue3 = '';
  var Red1 = '';    var Red2 = '';    var Red3 = '';
  var Total = '';
  var sumR = '';
  var sumB = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OLYMPIC BOXING SCORING'),
        backgroundColor: Color(0xff53131d),
      ),
      body: Column(
        children: [
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image/logo.png', width: 300.00),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 25.0,
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Women's Light(57-60kg)Semi-final",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.person, size: 70.0, color: Colors.red.shade900),
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/image/flag_ireland.png',
                          width: 50.00),
                      Text('  IRELAND', style: TextStyle(fontSize: 25.0)),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Text('HARRINGTON Kellie Anne',
                      style: TextStyle(fontSize: 15.0)),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.person, size: 70.0, color: Colors.blue.shade900),
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/image/flag_Thailand.png',
                          width: 50.00),
                      Text('  THAILAND', style: TextStyle(fontSize: 25.0)),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Text('SEESONDEE Sudaporn', style: TextStyle(fontSize: 15.0)),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.pink.shade800,
                height: 8.0,
              )),
              Expanded(
                  child: Container(
                color: Colors.blue.shade900,
                height: 8.0,
              )),
            ],
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(Red1,style: TextStyle(fontSize: 30.0)),
                Text( Round1 ),
                Text(Blue1,style: TextStyle(fontSize: 30.0)),
              ],
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(Red2,style: TextStyle(fontSize: 30.0)),
              Text( Round2 ),
              Text(Blue2,style: TextStyle(fontSize: 30.0)),
            ],
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(Red3,style: TextStyle(fontSize: 30.0)),
              Text(Round3),
              Text(Blue3,style: TextStyle(fontSize: 30.0)),
            ],
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(sumR,style: TextStyle(fontSize: 30.0)),
              Text(Total),
              Text(sumB,style: TextStyle(fontSize: 30.0)),
            ],
          ),
          SizedBox(height: 370.0),
          Row(
            children: [

              //Red
              if(count < 3)
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    count+=1;
                    setState(() {
                      if(count == 1){
                        Red1 = '10';
                        Blue1 = '9';
                        Round1 = 'ROUND 1';
                        ScoreRed+=10;
                        ScoreBlue+=9;
                        ReslutRed = ScoreRed;
                        ReslutBlue = ScoreBlue;
                      }
                      else if(count == 2){
                        Red2 = '10';
                        Blue2 = '9';
                        Round2 = 'ROUND 2';
                        ScoreRed+=10;
                        ScoreBlue+=9;
                        ReslutRed = ScoreRed;
                        ReslutBlue = ScoreBlue;
                      }
                      else if(count == 3){
                        Red3 = '10';
                        Blue3 = '9';
                        Round3 = 'ROUND 3';
                        ScoreRed+=10;
                        ScoreBlue+=9;
                        ReslutRed = ScoreRed;
                        ReslutBlue = ScoreBlue;
                        ReslutRed = ReslutRed;
                        ReslutBlue = ScoreBlue;
                        Total = 'TOTAL';
                        sumR = ReslutRed.toString();
                        sumB = ReslutBlue.toString();
                      }
                    });
                  },
                  child: Icon(Icons.person, color: Colors.white),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(400, 50), primary: Color(0xffa21026)),
                ),
              ),
              SizedBox(width: 5.0),

              //blue
              if(count<3)
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    count+=1;
                    setState(() {
                      if(count == 1){
                        Red1 = '9';
                        Blue1 = '10';
                        Round1 = 'ROUND 1';
                        ScoreRed+= 9;
                        ScoreBlue+= 10;
                        ReslutRed = ScoreRed;
                        ReslutBlue = ScoreBlue;
                      }
                      else if(count == 2){
                        Red2 = '9';
                        Blue2 = '10';
                        Round2 = 'ROUND 2';
                        ScoreRed+= 9;
                        ScoreBlue+= 10;
                        ReslutRed = ScoreRed;
                        ReslutBlue = ScoreBlue;
                      }
                      else if(count == 3){
                        Red3 = '9';
                        Blue3 = '10';
                        Round3 = 'ROUND 3';
                        ScoreRed+= 9;
                        ScoreBlue+= 10;
                        ReslutRed = ScoreRed;
                        ReslutBlue = ScoreBlue;
                        Total = 'TOTAL';
                        sumR = ReslutRed.toString();
                        sumB = ReslutBlue.toString();
                      }
                    });
                  },
                  child: Icon(Icons.person, color: Colors.white),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(400, 50), primary: Color(0xFF0000A0)),
                ),
              ),
              //Reslut
              if(count == 3)
                Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          count = 0;
                          ScoreRed = 0;    ReslutRed = 0;
                          ScoreBlue = 0;    ReslutBlue = 0;
                          Round1 = '';  Round2 = '';  Round3 = '';
                          Blue1 = '';   Blue2 = '';   Blue3 = '';
                          Red1 = '';    Red2 = '';    Red3 = '';
                          Total = '';   sumR = '';    sumB = '';
                        });
                      },
                      child: Icon(Icons.close),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(400, 50),
                        primary: Colors.black,
                      ),
                    ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
