import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:dungeon/pages/register_page.dart';
import 'package:dungeon/pages/signin_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(36, 34, 42, 1.0), //
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
            color: Color.fromRGBO(36, 34, 42, 1.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset('images/people_1.png',
                          width: 250, height: 250),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text('Dungeon',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 140),
                      SizedBox(
                        width: 150.0,
                        height: 60.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(240, 240, 241, 1.0))),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return RegisterPage();
                            }));
                          },
                          child: Text('Register',
                              style: TextStyle(color: Colors.black87)),
                        ),
                      ),
                      SizedBox(
                        width: 150.0,
                        height: 60.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(59, 57, 65, 1.0))),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignInPage();
                            }));
                          },
                          child: Text('Sign In'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
