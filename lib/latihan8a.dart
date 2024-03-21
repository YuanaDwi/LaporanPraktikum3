import 'package:flutter/material.dart';

void main() {
  runApp(TwitterDesign());
}

class TwitterDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tuiter',
            style: TextStyle(
              color: Colors.white, 
            ),
          ),
          backgroundColor: Colors.lightBlue,
        ),

        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  constraints: BoxConstraints.expand(height: 200), 
                  color: Colors.grey[300],
                  child: Image.asset(
                    'assets/bunga.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50, left: 16, right: 16),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Yuana Istiqomah',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 230,
              right: 16,
              child: ElevatedButton(
                onPressed: () {
  
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder( 
                    borderRadius: BorderRadius.circular(8), 
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16), 
                  backgroundColor: Colors.lightBlue, 
                  foregroundColor: Colors.white,
                  elevation: 2,
                  shadowColor: Colors.grey,
                ),
                child: Text('Follow'),
              ),
            ),
            Positioned(
              left: 20,
              top: 140,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.lightBlue, width: 3),
                ),
                child: Image.asset(
                  'assets/bunga.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
