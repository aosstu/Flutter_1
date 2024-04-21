import 'package:flutter/material.dart';

class Item {
  Item(
      {required this.headerText,
      required this.expandedText,
      this.isExpanded = false});
  String headerText;
  String expandedText;
  bool isExpanded;
}

class Widget096 extends StatefulWidget {
  const Widget096({Key? key}) : super(key: key);
  @override
  State<Widget096> createState() => _Widget096State();
}

class _Widget096State extends State<Widget096> {
  final List<Item> _data = List<Item>.generate(
    10,
    (int index) {
      return Item(
        headerText: 'Item $index',
        expandedText: 'This is the item number $index',
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _data[index].isExpanded = !isExpanded;
          });
        },
        children: _data.map<ExpansionPanel>((Item item) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(item.headerText),
              );
            },
            body: ListTile(
              title: Text(item.expandedText),
            ),
          );
        }).toList(),
      ),
    );
  }
}
