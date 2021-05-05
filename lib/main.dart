import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'alert dialog',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {

  createAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('タイトル'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alert dialog'),
      ),
      body: Builder(builder: (context){
        return Container(
          child: Center(
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              child: Text('dialog'),
              onPressed: () {
                createAlertDialog(context);
              },
            ),
          ),
        );
      }),
    );
  }
}
