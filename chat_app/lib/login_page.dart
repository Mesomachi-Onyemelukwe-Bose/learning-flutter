import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Button Clicked');
          }
        ),
        //TODO: add the text and image from the design

        body: Column(children: [
          Text(
          'Let\'s sign you in!', 
          style: TextStyle(
            fontSize: 30, 
            color: Colors.brown,
            fontWeight: FontWeight.bold, letterSpacing: 0.5
            ),
          ),
          Center(
          child: Text(
          "Welcome back! \n You've been missed!",
          style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.brown)
          ),
          Image.network(),
          Container(
            height: 150,
            width: 150,
            child: FlutterLogo(),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(50)
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: NetworkImage(
                  "https://cdn.explorecams.com/storage/photos/LEFEikw0MR_1600.jpg"
                )
              ),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(24)
            )
          )
        )
        ],

        )
          
      );
  }
}