import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

  class _MyHomePageState extends State<MyHomePage> {
    int _rating = 0;

  @override
  Widget build(BuildContext context) {
    double _size = 50;

    return Scaffold(
      appBar: AppBar(
        title: Text('Vanilla Demo'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: IconButton(
                icon: (_rating >= 1)
                    ? Icon(Icons.star, size: _size, color: Colors.amber)
                    : Icon(Icons.star_border, size: _size, color: Colors.grey),
              onPressed: () {
                setState(() {
                  _rating = 1;
                },
                );
              },
              ),
            ),
            Container(
              child: IconButton(
                icon: (_rating >= 2)
                    ? Icon(Icons.star, size: _size, color: Colors.amber)
                    : Icon(Icons.star_border, size: _size, color: Colors.grey),
              onPressed: () {
                setState(() { 
                  _rating = 2;
                },
                );
              },
              ),    
            ),
            Container(
              child: IconButton(
                icon: (_rating >= 3)
                    ? Icon(Icons.star, size: _size, color: Colors.amber)
                    : Icon(Icons.star_border, size: _size, color: Colors.grey),
              onPressed: () {
                setState(() { 
                  _rating = 3;
                },
                );
              },
              ),    
              
            )
          ],
          
          
        ),
      ),
    );
  }
}
