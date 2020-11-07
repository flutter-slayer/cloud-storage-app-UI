import 'iconContainer.dart';
import 'package:flutter/material.dart';

class GridList extends StatefulWidget {
  @override
  _GridListState createState() => _GridListState();
}

class _GridListState extends State<GridList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffeff2f3),
      child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 30.0,
//          crossAxisSpacing: 30.0,
          children: <IconContainer>[
            IconContainer(
              icon: Icon(
                Icons.archive,
                size: 50,
                color: Colors.blue,
              ),
              text: 'Archive',
            ),
            IconContainer(
              icon: Icon(
                Icons.android,
                size: 50,
                color: Colors.green,
              ),
              text: 'Illustration',
            ),
            IconContainer(
              icon: Icon(
                Icons.pie_chart,
                size: 50,
                color: Colors.pinkAccent,
              ),
              text: 'Art Work',
            ),
            IconContainer(
              icon: Icon(
                Icons.dashboard,
                size: 50,
                color: Colors.purpleAccent,
              ),
              text: 'Site',
            ),
            IconContainer(
              icon: Icon(
                Icons.camera,
                size: 50,
                color: Colors.blue[900],
              ),
              text: 'Camera',
            ),
            IconContainer(
              icon: Icon(
                Icons.apps,
                size: 50,
                color: Colors.redAccent,
              ),
              text: 'Apps',
            ),
            IconContainer(
              icon: Icon(
                Icons.create_new_folder,
                size: 50,
                color: Colors.yellow[700],
              ),
              text: 'Assets',
            ),
            IconContainer(
              icon: Icon(
                Icons.assignment,
                size: 50,
                color: Colors.deepPurple[700],
              ),
              text: 'Assignments',
            ),
            IconContainer(
              icon: Icon(
                Icons.nature,
                size: 50,
                color: Colors.green[700],
              ),
              text: 'Mountain',
            ),
            IconContainer(
              icon: Icon(
                Icons.settings_voice,
                size: 50,
                color: Colors.pink[700],
              ),
              text: 'Records',
            ),
            IconContainer(
              icon: Icon(
                Icons.insert_chart,
                size: 50,
                color: Colors.green[200],
              ),
              text: 'Results',
            ),
            IconContainer(
              icon: Icon(
                Icons.title,
                size: 50,
                color: Colors.blue,
              ),
              text: 'Projects',
            ),
          ]),
    );
  }
}
