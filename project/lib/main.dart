import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballPointerCounterApp());
}

class BasketballPointerCounterApp extends StatefulWidget {
  const BasketballPointerCounterApp({super.key});

  
  @override
  State<BasketballPointerCounterApp> createState() => _BasketballPointerCounterAppState();
}

class _BasketballPointerCounterAppState extends State<BasketballPointerCounterApp> {
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      '$teamApoints',
                      style: const TextStyle(
                        fontSize: 140,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: ElevatedButton(
                        onPressed: addonepointsA,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          minimumSize: const Size(120, 40),
                        ),
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            //fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: addtwopointsA,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          minimumSize: const Size(120, 40),
                        ),
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            //fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          minimumSize: const Size(120, 40),
                        ),
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            //fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      '$teampPoints',
                      style: const TextStyle(
                        fontSize: 140,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: ElevatedButton(
                        onPressed: addonepointsB ,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          minimumSize: const Size(120, 40),
                        ),
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            //fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: addtwopointsB,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          minimumSize: const Size(120, 40),
                        ),
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            //fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: addthreepointsB,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          minimumSize: const Size(120, 40),
                        ),
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            //fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: reset,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                minimumSize: const Size(160, 40),
              ),
              child: const Text(
                'Reset',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
