import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, String>> people = [
    {"name": "Yuana Istiqomah Dwi", "hobby": "Membaca Novel", "photo": "assets/yuana.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Nama & Hobi'),
        ),
        body: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            return CardItem(
              name: people[index]["name"]!,
              hobby: people[index]["hobby"]!,
              photo: people[index]["photo"]!,
            );
          },
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String name;
  final String hobby;
  final String photo;

  const CardItem({
    required this.name,
    required this.hobby,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(photo),
        ),
        title: Text(name),
        subtitle: Text(hobby),
      ),
    );
  }
}
