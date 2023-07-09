import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Ninjacard(),
  )
  );
  
  class Ninjacard extends StatefulWidget {
  @override
  State<Ninjacard> createState() => _NinjacardState();
}

class _NinjacardState extends State<Ninjacard> {
    int ranking=1;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
        title: Text('ID card') ,
        centerTitle: true,
        backgroundColor: Colors.cyan[700],
        elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              ranking++;
            });
          },
          child: Icon(Icons.plus_one),
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('assets/messi_photo.jpeg'),
                  radius: 100.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[700], // make it red to see what actually divider is
              ),
              Text('Name:',
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 8.0,),
              const Text('Lionel Andres Messi',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0,),
              Text('Registration Number:',
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 8.0,),
              const Text('21BCE3369',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0,),
              Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.blueGrey[100],
                    size: 25.0,
                  ),
                  const SizedBox(width: 10.0,),

                  const Text('vihan.agarwal2021@vit.student.ac.in',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 25.0,
                    letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0,),
              Text('Ranking :',
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 8.0,),
              Text('$ranking',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    }
}

