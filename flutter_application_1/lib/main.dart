import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' as gf;
void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(height: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(100), // Half of the desired width and height
                child: Image.asset(
                  'download.jpeg',
                  width: 200,
                  height: 200,)),
              Text(
              'The info',
              style: gf.GoogleFonts.sacramento(fontSize: 48),
            ),
            Text(
            'Contact details',
            style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            ),
            ),

            Row(children: [Icon(Icons.person,
            size: 50, 
            color: Colors.blue
            ),
            Text(
              'Name: Kevin Ayad',
              style: TextStyle(fontSize: 24),
            ),],),
            Row(children: [Icon(Icons.email,
            size: 50, 
            color: Colors.blue
            ),
            Text(
              'Email: gusayake@student.gu.se',
              style: TextStyle(fontSize: 24),
            ),],),
            Row(children: [Icon(Icons.phone,
            size: 50, 
            color: Colors.blue
            ),
            Text(
              'Phone: 123456',
              style: TextStyle(fontSize: 24),
            ),],),
           
            
            
          ],
        ),
      ),
    );
  }
}