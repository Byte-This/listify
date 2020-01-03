import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:listify/src/models/Todo.dart';

class AddNewListItem extends StatelessWidget {
  final TextEditingController _textfieldController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New List Item'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _textfieldController,
                decoration: InputDecoration(
                  labelText: 'Add New List Item'
                ),
              ),
              RaisedButton(
                child: Text('Add New List Item'),
                onPressed: () => Navigator.pop(context, new Todo(_textfieldController.text)),
              )
            ],
          ),
        ),
      ),
    );
  }
}