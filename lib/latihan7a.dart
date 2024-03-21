
import 'package:flutter/material.dart';
void main() {
  runApp(GojekApp());
}

class GojekApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goyek',
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
        backgroundColor: Color.fromARGB(255, 113, 135, 241), 
        title: Text(
          'Goyek',
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
                    color: Colors.blue, 
                    borderRadius: BorderRadius.circular(8.0), 
                  ),
                  child: Text(
                    'Edit',
                    style: TextStyle(color: Colors.white), 
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
                  MenuItem(imagePath: 'assets/motorgoyek.png', label: 'GoRide'),
                  MenuItem(imagePath: 'assets/motorgoyek.png', label: 'GoCar'),
                  MenuItem(imagePath: 'assets/motorgoyek.png', label: 'GoFood'),
                  MenuItem(imagePath: 'assets/motorgoyek.png', label: 'GoSend'),
                  MenuItem(imagePath: 'assets/motorgoyek.png', label: 'GoMart'),
                  MenuItem(imagePath: 'assets/motorgoyek.png', label: 'GoPulsa'),
                  MenuItem(imagePath: 'assets/motorgoyek.png', label: 'GoCheckIn'),
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
