import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterPlusMinus = 0;
  int _counterPressMe = 0;

  void _incrementPlusMinus() {
    setState(() {
      _counterPlusMinus++;
    });
  }

  void _decrementPlusMinus() {
    setState(() {
      if (_counterPlusMinus > 0) {
        _counterPlusMinus--;
      }
    });
  }

  void _incrementPressMe() {
    setState(() {
      _counterPressMe++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Polar Bear Booper'),
        centerTitle: true, // Center the title
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counterPlusMinus',
              style: Theme.of(context).textTheme.headline6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _incrementPlusMinus,
                ),
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: _decrementPlusMinus,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              '$_counterPressMe',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementPressMe,
              child: Text(
                'Boop!',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(height: 20),
            Image.network(
              'https://www.wwf.org.uk/sites/default/files/styles/social_share_image/public/2016-12/Original_WW22791.jpg?itok=kuWctE9S',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
