
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 47, 138, 242), 
          title: Ink(
            child: InkWell(
              onTap: () {

              },
              hoverColor: Colors.black12, 
              child: Text(
                'Penuhi Lindungi',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(2.0), 
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1, 
                    blurRadius: 2, 
                    offset: Offset(0, 1), 
                  ),
                ],
              ),
              height: 2.0,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Color.fromARGB(255, 47, 138, 242),
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Entering a public space?',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, 
                          ),
                        ),
                        SizedBox(height: 5.0), 
                        Text(
                          'Stay allert to stay safe',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[200],
                    ),
                    child: Image.asset(
                      'assets/bunga.png', 
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[200], 
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    _buildFeatureItem('assets/bunga.png', 'Covid-19 Vaksin'),
                    _buildFeatureItem('assets/bunga.png', 'Covid-19 Test Result'),
                    _buildFeatureItem('assets/bunga.png', 'EHAC'),
                    _buildFeatureItem('assets/bunga.png', 'Covid-19 Vaksin'),
                    _buildFeatureItem('assets/bunga.png', 'Covid-19 Test Result'),
                    _buildFeatureItem('assets/bunga.png', 'EHAC'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String imagePath, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 60.0,
          height: 60.0,
        ),
        SizedBox(height: 10.0),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
