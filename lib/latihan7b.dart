
import 'package:flutter/material.dart';

void main() {
  runApp(GojekApp());
}

class GojekApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green, 
        title: Text(
          'Gojek',
          style: TextStyle(
            color: Colors.white, 
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Favourites',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {

                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white, 
                      borderRadius: BorderRadius.circular(20.0), 
                      border: Border.all(color: Color.fromARGB(255, 28, 198, 6)), 
                    ),
                    child: Text(
                      'Edit',
                      style: TextStyle(color: Color.fromARGB(255, 28, 198, 6)),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0), 
              child: GridView.count(
                crossAxisCount: 4,
                children: <Widget>[
                  MenuItem(imagePath: 'assets/goride.png', label: 'GoRide'),
                  MenuItem(imagePath: 'assets/gocar.png', label: 'GoCar'),
                  MenuItem(imagePath: 'assets/gofood.png', label: 'GoFood'),
                  MenuItem(imagePath: 'assets/gosend.png', label: 'GoSend'),
                  MenuItem(imagePath: 'assets/gomart.png', label: 'GoMart'),
                  MenuItem(imagePath: 'assets/gopulsa.png', label: 'GoPulsa'),
                  MenuItem(imagePath: 'assets/checkin.png', label: 'CheckIn'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String imagePath;
  final String label;

  const MenuItem({Key? key, required this.imagePath, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            imagePath,
            width: 50.0,
            height: 50.0,
          ),
          SizedBox(height: 8.0), 
          Text(label),
        ],
      ),
    );
  }
}
