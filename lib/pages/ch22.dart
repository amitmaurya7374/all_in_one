import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  static const routeName = 'Dialog-Page';

  @override
  Widget build(BuildContext context) {
    Future<bool> _showDialog() async {
      return await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Confirm'),
              content: const Text('Are you sure you want to quiet'),
              actions: [
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Yes'),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('No'),
                ),
              ],
            );
          });
    }

    Future<void> _showSimpleDialog() async {
      return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('Simple Dialog'
                ''),
            children: [
              SimpleDialogOption(
                child: Text('Cat'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 2.0,
              ),
              SimpleDialogOption(
                child: Text('Dog'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 2.0,
              ),
              SimpleDialogOption(
                child: Text('Cow'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 2.0,
              ),
              SimpleDialogOption(
                child: Text('Monkey'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 2.0,
              ),
            ],
            // titleTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: RaisedButton(
                color: Colors.deepPurple,
                elevation: 15.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: () {
                  _showSimpleDialog();
                },
                child: Text(
                  'Simple Dialog Button',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
