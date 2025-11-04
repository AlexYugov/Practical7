import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          title: Text('Профиль', style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://i.pinimg.com/736x/27/fc/53/27fc5356797ba03b8e322e8f9782acb6.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 150,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Югов Александр',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 3),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Возраст: 20', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10),
                        Text('Группа: ИСИПу-216', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10),
                        Text('Страна: Россия', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10),
                        Text('Интересы: Программирование, спорт и машины', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10),
                        Text('Качок', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}