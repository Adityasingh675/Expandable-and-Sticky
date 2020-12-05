import 'package:exp_sticky_list/header_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Header App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Expandable List'),
              color: Colors.green,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HeaderPage(
                      title: 'Expandable List',
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
            ),
            RaisedButton(
              child: Text('Sticky Header List'),
              color: Colors.red,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HeaderPage(
                      title: 'Sticky List',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
