import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar demo"),
          bottom: PreferredSize(
            child: Container(
              color: Colors.grey,
              height: 75.0,
              width: double.infinity,
              child: Text('Welcome',
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
              ),),
            ),
            preferredSize: Size.fromHeight(75.0),

          ),

        ),
        
        drawer: Drawer(
          elevation: 16.0,

          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('miru'),
                accountEmail: Text('miru2win@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('xyz'),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text('xyz'),
                  )
                ],
              ),
              ListTile(
                title: Text("All Inbox"),
                leading: Icon(Icons.mail),
              ),
              Divider(
                height: 0.1,
              ),

              ListTile(
                title: Text("Primary"),
                leading: Icon(Icons.inbox),
              ),
              Divider(
                height: 0.1,
              ),
              ListTile(
                title: Text("Social"),
                leading: Icon(Icons.people),
              ),
              Divider(
                height: 0.1,
              ),
              ListTile(
                title: Text("Promotion"),
                leading: Icon(Icons.local_offer),
              ),
              Divider(
                height: 0.1,
              )
            ],
          ),
        ),
        body: Center(
            child:
            Text('Type a text',
            style: TextStyle(
              fontSize: 35.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              letterSpacing: 1.0,
              wordSpacing: 5.0,
              backgroundColor: Colors.teal,
              shadows:[
                Shadow(
                  color: Colors.black,
                  offset: Offset(1,4),
                  blurRadius: 2,
                )
              ],
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.double,
            ),
            ),

        ),
        persistentFooterButtons: [
          RaisedButton(elevation: 10.0,
          onPressed: ()
          {print('click');},
            color: Colors.grey,
            child: Icon(Icons.add),
          )
        ],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
              title: Text('Home'),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text('Search'),
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              title: Text('Add'),
              icon: Icon(Icons.add),
            ),
          ],
          onTap: (int index)
            {
              print(index.toString());
            }
        ),
       // backgroundColor: Colors.teal,
      ),
    );
  }
}
