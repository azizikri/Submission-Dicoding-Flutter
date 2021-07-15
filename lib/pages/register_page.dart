import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:dungeon/pages/home_page.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String username = '';
  final _username = TextEditingController();
  final _password = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(36, 34, 42, 1.0), //
        elevation: 0,
        leading: IconButton(
          icon: Icon(CupertinoIcons.arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Stack(children: <Widget>[
          Container(
            color: Color.fromRGBO(36, 34, 42, 1.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text('Welcome!, Let’s set you up!',
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 30, top: 30, right: 30, bottom: 10),
                    child: TextField(
                      controller: _username,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                        labelText: 'Username',
                        errorText:
                            _validate ? 'Username Can\'t Be Empty' : null,
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onChanged: (String value) {
                        setState(() {
                          username = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 30, top: 10, right: 30, bottom: 15),
                    child: TextField(
                      controller: _password,
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                        labelText: 'Password',
                        errorText:
                            _validate ? 'Password Can\'t Be Empty' : null,
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          Positioned(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.all(30),
              child: SizedBox(
                width: 150.0,
                height: 60.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(240, 240, 241, 1.0))),
                  onPressed: () {
                    setState(() {
                      if (_username.text.isEmpty) {
                        _validate = true;
                      } else {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage(),
                                settings: RouteSettings(
                                  arguments: username,
                                )));
                      }
                    });
                  },
                  child:
                      Text('Register', style: TextStyle(color: Colors.black87)),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
