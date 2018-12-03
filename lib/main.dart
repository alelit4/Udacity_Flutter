import 'package:flutter/material.dart';

// You can use a relative import, i.e. `import 'category.dart';` or
// a package import, as shown below.
// More details at http://dart-lang.github.io/linter/lints/avoid_relative_lib_imports.html
import 'package:udacity_flutter_app/category.dart';

void main() => runApp(MyApp());

class MyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
        height: 500.0,
        width: 300,
        child: Center(
            child: Text(
          "Hello",
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}

class FirstCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.accessibility,
                size: 60.0,
              ),
            ),
            Text(
              "My Category",
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          title: Text("My F**ter App"),
        ),
        body: Center(
          child: Category(name: _categoryName,
            color: _categoryColor,
            iconLocation: _categoryIcon,),
        ),
      ),
    );
  }
}
