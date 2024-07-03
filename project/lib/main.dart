import 'package:flutter/material.dart';

void main() {
  runApp(BasketballPointerCounterApp());
}

class BasketballPointerCounterApp extends StatefulWidget {
  
  @override
  State<BasketballPointerCounterApp> createState() => _BasketballPointerCounterAppState();
}

class _BasketballPointerCounterAppState extends State<BasketballPointerCounterApp> {
  @override
  int teamApoints = 0 ;

  int teampPoints = 0 ;

  void addonepointsA(){
    teamApoints++;
    setState(() {
      
    });
  
  }
  void addtwopointsA(){
      teamApoints+=2;
      setState(() {
        
      });
  }
  void addthreepointsA(){
    teamApoints+=3;
    setState(() {
      
    });
  }
  void addonepointsB(){
    teampPoints++;
    setState(() {
      
    });
  
  }
  void addtwopointsB(){
      teampPoints+=2;
      setState(() {
        
      });
  }
  void addthreepointsB(){
    teampPoints+=3;
    setState(() {
      
    });
  }
  void reset(){
    teamApoints = 0 ; 
    teampPoints = 0 ;
    setState(() {
      
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      '$teamApoints',
                      style: TextStyle(
                        fontSize: 140,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: ElevatedButton(
                        onPressed: addonepointsA,
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            //fontStyle: FontStyle.normal,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          minimumSize: Size(120, 40),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: addtwopointsA,
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            //fontStyle: FontStyle.normal,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          minimumSize: Size(120, 40),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            //fontStyle: FontStyle.normal,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          minimumSize: Size(120, 40),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      '$teampPoints',
                      style: TextStyle(
                        fontSize: 140,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: ElevatedButton(
                        onPressed: addonepointsB ,
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            //fontStyle: FontStyle.normal,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          minimumSize: Size(120, 40),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: addtwopointsB,
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            //fontStyle: FontStyle.normal,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          minimumSize: Size(120, 40),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: addthreepointsB,
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            //fontStyle: FontStyle.normal,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          minimumSize: Size(120, 40),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: reset,
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                minimumSize: Size(160, 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
