import 'package:flutter/material.dart';
import 'package:udacity_flutter_app/category.dart';
import 'unit.dart';

class CategoryRoute extends StatelessWidget {

  CategoryRoute();

  static const _categoryNames = <String>[
    'Category 1',
    'Category 2',
    'Category 3',
    'Category 4',
    'Category 5',
    'Category 6',
    'Category 7',
    'Category 8',
    ];

  static const _categoryColors = <Color>[
    Colors.amber,
    Colors.green,
    Colors.pink,
    Colors.blueAccent,
    Colors.deepOrange,
    Colors.deepPurpleAccent,
    Colors.teal,
    Colors.tealAccent,

  ];



  @override
  Widget build(BuildContext context) {
    var categories = _loadCategories(_categoryNames, _categoryColors);

    final listView = Container(
      color: Colors.white70.withOpacity(0.5),
      padding: EdgeInsets.symmetric(horizontal: 2.0),
      child: _buildCategoryWidgets(categories),
    );

    return listView;
  }
}

List<Category> _loadCategories(List<String> categoryNames, List<Color> categoryColors  ) {

  var categories = <Category>[];
  for(var i = 0; i < categoryNames.length; i++) {
    categories.add(Category(
      name: categoryNames[i],
      color: categoryColors[i],
      units: _retrieveUnitList(categoryNames[i]),
      iconLocation: Icons.cake,
    ));
  }
  return categories;
}

/// Returns a list of mock [Unit]s.
List<Unit> _retrieveUnitList(String categoryName) {
  return List.generate(10, (int i) {
    i += 1;
    return Unit(
      name: '$categoryName Unit $i',
      conversion: i.toDouble(),
    );
  });
}

Widget _buildCategoryWidgets (List<Category> categories){

  final appBar = AppBar(
    elevation: 0.0,
    title: Text(
      'Unit Converter',
      style: TextStyle(
        color: Colors.black,
        fontSize: 30.0,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.white70,
  );

  final listView =  ListView.builder(
    padding: EdgeInsets.all(8.0),
    itemCount: categories.length,
    itemBuilder: (BuildContext context, int index) {
      return categories[index];
    },
  );

  return Scaffold(
    appBar: appBar,
    body: listView,
  );
}


