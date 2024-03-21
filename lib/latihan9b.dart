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
          backgroundColor: Color.fromARGB(255, 62, 152, 255),
          title: Ink(
            child: InkWell(
              onTap: () {

              },
              hoverColor: Colors.black12,
              child: Text(
                'Peduli Lindungi',
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
              color: Color.fromARGB(255, 62, 152, 255), 
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
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
                        SizedBox(width: 10.0), 
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.blue, 
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/barcode.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0), 
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1), 
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                    children: [
                      Text(
                        'Check-in Preference',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                        },
                        icon: Icon(Icons.qr_code_scanner), 
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 255, 255, 255), 
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    _buildFeatureItem('assets/pl1.png', 'Covid-19 Vaksin'),
                    _buildFeatureItem('assets/pl2.png', 'Covid-19 Test Result'),
                    _buildFeatureItem('assets/pl3.png', 'EHAC'),
                    _buildFeatureItem('assets/pl4.png', 'Travel Regulation'),
                    _buildFeatureItem('assets/pl5.png', 'telemedicine'),
                    _buildFeatureItem('assets/pl6.png', 'Health care facility'),
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
