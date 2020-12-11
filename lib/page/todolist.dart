import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoList createState() => _TodoList();
}

class _TodoList extends State<TodoList> {
  final int itemCount = 10;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: itemCount > 0
          ? ListView.builder(
              itemCount: itemCount,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  // onTap: () => Navigator.of(context).pushNamed(),
                  child: Container(
                    height: 80,
                    child: Card(
                      child: CheckboxListTile(
                        title: Text('ToDo ${index + 1}'),
                        subtitle: Text('subtitle'),
                        value: _isChecked,
                        onChanged: (bool value) {
                          setState(() {
                            _isChecked = value;
                          });
                        },
                      ),
                      // child: Center(child: Text('ToDo ${index + 1}')),
                    ),
                  ),
                );
              },
            )
          : Center(child: const Text('No items')),
    );
  }
}
