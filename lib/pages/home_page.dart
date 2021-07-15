import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:dungeon/components/sidedrawer_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> categoryList = [
      'T-shirt',
      'Jackets',
      'Shirt',
      'Tanktop',
      'Gloves',
      'Hat',
      'Tuxedo',
      'Cap',
    ];
    // final List<String> clothesImage = [
    //   'clothes0',
    //   'clothes1',
    //   'clothes2',
    //   'clothes3',
    //   'clothes4',
    //   'clothes5',
    //   'clothes6',
    //   'clothes7',
    //   'clothes8',
    // ];

    Map clothes = {
      0: {
        "img": "clothes0",
        "name": "Leather Jacket",
        "desc":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      },
      1: {
        "img": "clothes1",
        "name": "Jeans",
        "desc":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      },
      2: {
        "img": "clothes2",
        "name": "Sunglasses",
        "desc":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      },
      3: {
        "img": "clothes3",
        "name": "Pattern Shirt",
        "desc":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      },
      4: {
        "img": "clothes4",
        "name": "Loafer",
        "desc":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      },
      5: {
        "img": "clothes5",
        "name": "Black Jeans",
        "desc":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      },
      6: {
        "img": "clothes6",
        "name": "Glasses",
        "desc":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      },
      7: {
        "img": "clothes7",
        "name": "Sweatshirt",
        "desc":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      },
      8: {
        "img": "clothes8",
        "name": "Scarf",
        "desc":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      },
    };
    return Scaffold(
        drawer: SideDrawer(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            centerTitle: true,
            title: Text('Dungeon', style: TextStyle(fontSize: 40)),
            backgroundColor: Color.fromRGBO(36, 34, 42, 1.0), //
            elevation: 0,
          ),
        ),
        body: SafeArea(
          child: Container(
            color: Color.fromRGBO(36, 34, 42, 1.0),
            child: Column(
              children: <Widget>[
                Divider(
                  height: 10,
                  thickness: 2,
                  color: Colors.white70,
                ),
                Container(
                  height: 65,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding: EdgeInsets.all(20),
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (context) {
                              //   return WelcomePage();
                              // }));
                            },
                            child: Text(categoryList[index],
                                style: TextStyle(
                                    color: Color.fromRGBO(240, 240, 241, 1.0),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ));
                    },
                    itemCount: categoryList.length,
                  ),
                ),
                Divider(
                  height: 10,
                  thickness: 2,
                  color: Colors.white70,
                ),
                Flexible(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(50),
                        height: 500,
                        child: GestureDetector(
                          onTap: () {
                            final route = MaterialPageRoute(
                              builder: (context) =>
                                  ItemDetails(map: clothes[index]),
                            );
                            Navigator.push(context, route);
                          },
                          child: ClipRRect(
                              child: Hero(
                                tag: '${clothes[index]["img"]}',
                                child: Image.asset(
                                    'images/clothes/${clothes[index]["img"]}.jpg'),
                              )),
                        ),
                      );
                    },
                    itemCount: clothes.length,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({Key? key, required this.map}) : super(key: key);
  final Map map;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        child: Stack(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              child: Hero(
                tag: map["img"],
                child: Image.asset('images/clothes/${map["img"]}.jpg'),
              ),
            ),
          ]),
          SlidingUpPanel(
            color: Color.fromRGBO(36, 34, 42, 1.0),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            panel: Center(
                child: Column(
              children: <Widget>[
                Divider(
                  thickness: 5,
                  indent: 180,
                  endIndent: 180,
                  color: Colors.white70,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(map["name"],
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(240, 240, 241, 1.0))),
                ),
                SizedBox(height: 50),
                Container(
                    margin: EdgeInsets.all(30),
                    child: Text(map["desc"],
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(240, 240, 241, 1.0)))),
                SizedBox(height: 50),
                Container(
                    child: SizedBox(
                  height: 60,
                  width: 300,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(240, 240, 241, 1.0))),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Buy', style: TextStyle(color: Colors.black87)),
                  ),
                )),
              ],
            )),
          ),
        ]),
      ),
    );
  }
}
