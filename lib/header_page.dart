import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class HeaderPage extends StatelessWidget {
  final title;
  HeaderPage({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: title == 'Expandable List' ? ExpandableList() : StickyList(),
    );
  }
}

class ExpandableList extends StatelessWidget {
  final list = List.generate(10, (index) => Text("Item ${index + 1}"));
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => ExpansionTile(
        title: Text('Header: ${index + 1}'),
        children: list
            .map(
              (value) => ListTile(
                title: value,
              ),
            )
            .toList(),
      ),
      itemCount: 5,
    );
  }
}

class StickyList extends StatelessWidget {
  final list = List.generate(10, (index) => Text("Item ${index + 1}"));
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => StickyHeader(
        header: Container(
          child: Text("Header: $index"),
          padding: EdgeInsets.all(8.0),
        ),
        content: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: list.map((value) => ListTile(title: value)).toList(),
          ),
        ),
      ),
    );
  }
}
