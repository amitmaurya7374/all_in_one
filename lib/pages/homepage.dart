import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('AppBar'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              //onpress is an event handler
              print('Added icon is pressed');
            },
          ),
        ],
      ),
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Body Part'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index)=>debugPrint('BottomNavigationBarTapped $index'),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('Ac Unit'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Person'),
          ),
        ],
      ),
      bottomSheet: Container(
        color: Colors.amber,
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.mail),
              onPressed: (){},
            ),
            SizedBox(
              width: 10.0,
            ),
            Text('Bottom sheet'),
          ],
        ),
      ),
      drawer: Drawer(

        child: ListView(
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              height: 100.0,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.phone_android,color: Colors.deepPurple,),
                      SizedBox(width: 5.0,),
                      Text('Drawer Item 1'),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Icon(Icons.train,color: Colors.deepPurple,),
                      SizedBox(width: 5.0,),
                      Text('Drawer Item 2'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        onPressed: (){
          print('You tapped mee');

        },
        child: Icon(Icons.accessibility),
      ),
      persistentFooterButtons: [
        IconButton(
          icon: Icon(Icons.access_alarm),
          onPressed: (){},
        ),
      ],
    );
  }
}
