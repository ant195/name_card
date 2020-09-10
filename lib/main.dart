import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  MyHomePageState createState() => MyHomePageState();
}
class MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      backgroundColor: Colors.blue[100],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/person.png'),
              ),
              Text("Anis Lestari", style: TextStyle(
                fontFamily: 'BalsamiqSans',
                fontSize: 25,
              ),),
              Text("anislestari01@gmail.com", style: TextStyle(
                fontSize: 20,
                fontFamily: 'BalsamiqSans',
                color: Colors.red[500],
                letterSpacing: 1.5
              ),),
              SizedBox(
                height: 20.0, width: 200.0,
                child: Divider(
                  color: Colors.teal[500],
                ),
              ),
              Text("Student at Yogyakarta State University", textAlign: TextAlign.center,)
          ],
          ),
        ),
      ),
    );
  }
}

