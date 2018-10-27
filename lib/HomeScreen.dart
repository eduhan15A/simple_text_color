import 'package:flutter/material.dart';

  class HomeScreen extends StatefulWidget {
    @override
    _HomeScreenState createState() => _HomeScreenState();
  }

  class _HomeScreenState extends State<HomeScreen> {
    Color _myColor = Colors.black;



    @override
    Widget build(BuildContext context) {
      final botones = <Widget>[
       RaisedButton(child: Text("Azul",  style:TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.blue
      ), ), onPressed: ()=> _changeColor(Colors.blue),  ),
       RaisedButton(child: Text("Verde", style:TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.green
      ),), onPressed:  ()=> _changeColor(Colors.green)
      ),
       RaisedButton(child: Text("Rojo", style:TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.red
      )
      )
       )
      ];


      return Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[new Text("Cambia el color del Texto",
                style:TextStyle(
               fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                color: _myColor
            ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: botones
            )

          ],


        )


      );

    }
    void _changeColor(Color color){

      setState(() {
        _myColor = color;
      });

    }
  }
