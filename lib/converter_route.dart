import 'package:flutter/material.dart';
import 'unit.dart';

class ConverterRoute extends StatelessWidget {
  final String name;
  final Color color;
  final List<Unit> units;

  ConverterRoute({
    @required this.name,
    @required this.color,
    @required this.units,
  })  : assert(name != null),
        assert(color != null),
        assert(units != null);

  Widget getList(BuildContext context) {
    final unitWidgets = units.map((Unit unit) {
      return Container(
        color: color,
        height: 100,
        width: 200,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }

  Widget getBlock() {
    return Center(
      child: Container(
        color: color,
        height: 600,
        width: 350,
        child: Center(
          child: Text(
            "Hello " + name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40.0,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
//    return getList(context);
    return getBlock();
  }
}
