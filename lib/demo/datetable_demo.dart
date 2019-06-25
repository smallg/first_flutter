import 'package:flutter/material.dart';
import '../model/post.dart';

class DateTableDemo extends StatefulWidget {
  @override
  _DateTableDemoState createState() => _DateTableDemoState();
}

class _DateTableDemoState extends State<DateTableDemo> {
  int _sortColumnIndex;
  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTable Demo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            DataTable(
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              // onSelectAll: (bool value){},
              columns: [
                DataColumn(
                    // label: Container(
                    //   width: 100.0,
                    //   child: Text('Title'),
                    // ),
                    label: Text('Title'),
                    onSort: (int index, bool ascending) {
                      setState(() {
                        _sortColumnIndex = index;
                        _sortAscending = ascending;
                        posts.sort((a, b) {
                          if (!ascending) {
                            final c = a;
                            a = b;
                            b = c;
                          }
                          return a.title.length.compareTo(b.title.length);
                        });
                      });
                    }),
                DataColumn(
                  label: Text('Author'),
                ),
                DataColumn(
                  label: Text('Image'),
                ),
              ],
              rows: posts.map((post) {
                return DataRow(
                  selected: post.selected,
                  onSelectChanged: (bool value) {
                    setState(() {
                      if (post.selected != value) {
                        post.selected = value;
                      }
                    });
                  },
                  cells: [
                    DataCell(Text(post.title)),
                    DataCell(Text(post.author)),
                    DataCell(Image.network(post.imageUrl)),
                  ],
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
