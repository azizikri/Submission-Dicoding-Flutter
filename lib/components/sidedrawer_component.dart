import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:dungeon/pages/home_page.dart';
import 'package:dungeon/pages/welcome_page.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
    return Drawer(
        child: Column(
      children: <Widget>[
        Container(
          height: 130.0,
          child: DrawerHeader(
            child: Center(
              child: Text(
                'Welcome, $username',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5)),
              color: Color.fromRGBO(36, 34, 42, 1.0),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () => {
        
          },
        ),
        ListTile(
          leading: Icon(Icons.shopping_cart),
          title: Text('Cart'),
          onTap: () => {},
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Logout'),
          onTap: () => {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return WelcomePage();
            }))
          },
        ),
      ],
    ));
  }
}
