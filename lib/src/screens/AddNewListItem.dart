import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

typedef OnSaveCallback = Function(String name);

class AddNewListItem extends StatefulWidget {
  final OnSaveCallback onSave;

  AddNewListItem({this.onSave});

  @override
  AddNewListItemState createState() {
    return AddNewListItemState();
  }
}

class AddNewListItemState extends State<AddNewListItem> {
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
                onPressed: () {
                  widget.onSave(_textfieldController.text);
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}