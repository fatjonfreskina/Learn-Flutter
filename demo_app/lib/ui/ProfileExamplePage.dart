import 'package:flutter/material.dart';
import 'my_navigation_drawer.dart';

class ProfileExamplePage extends StatelessWidget {
  const ProfileExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A4856),
      appBar: AppBar(
        backgroundColor: Color(0xFF9DADBC),
        title: const Text('Profile Example'),
        iconTheme: const IconThemeData(color: Colors.white),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(5),
            top: Radius.circular(5),
          ),
        ),

      ),
      drawer: const MyNavigationDrawer(),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF9DADBC),
        ),
        child: ClipRRect(
          borderRadius: const  BorderRadius.only(
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0),
          ),
          child: BottomNavigationBar(
            currentIndex: 0,
            items: const [
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.house, color: Colors.black),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm_rounded, color: Colors.black),
                label: 'Timer',
              ),
            ],
          ),
        ),
      ),

      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xFFc0c0c0),
                  Colors.black,
                ],
              ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/91606088.jpg'),
              ),
              Text(
                  'Fatjon Freskina',
                style: TextStyle(
                fontSize: 40,
                fontFamily: 'Pacifico',
                  color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              Text(
                  'SOFTWARE DEVELOPER',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SourceSansPro',
                    color: Colors.white,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                  ),),
              SizedBox(
                height: 10,

                child: Divider(
                  endIndent: 100,
                  indent: 100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                      size: 20,),
                    title: Text(
                        '+39 345 59 28 303',
                        style: TextStyle(
                          color: Colors.teal,
                          fontFamily: 'SourceSansPro',
                          fontSize: 20,
                        ),
                  ),
                ),
              ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    subtitle: Text(
                        'Dio ladro',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 12,
                    ),),
                    leading: Icon(Icons.email),
                    title: Text(
                      'fatjonfreskina@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'SourceSansPro',
                        color: Colors.teal,
                      ),
                  ),
                ),
              ),
              ),
              SizedBox(height: 100,), /// Used to push elements up :)
    ],
    ),
    ),
      ),
    );
  }
}