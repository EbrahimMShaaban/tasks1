import 'package:flutter/material.dart';
import 'package:tasks1/widgets/button.dart';
import 'package:tasks1/widgets/divider.dart';
import 'package:tasks1/widgets/row.dart';

import 'main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool? val = false;

  final GlobalKey<ScaffoldState>? _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              size: 40,
              color: Colors.black,
            ),
            onPressed: () => _scaffoldKey!.currentState!.openDrawer(),
          ),
        ],
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0,
        title: Center(
            child: Text(
          'Website Update',
          style: styleboldb,
        )),
      ),
      endDrawer: Drawer(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description',
                  style: primarystyle,
                ),
                Text(
                  'The main core of this  work                              is obtain a faster system',
                  style: styleboldg,
                ),
                Dividerline(
                  rightend: 10,
                  liftend: 10,
                ),
                Text(
                  'Due Date',
                  style: primarystyle,
                ),
                Text('10 June 2020', style: styleboldg),
                Dividerline(
                  rightend: 10,
                  liftend: 10,
                ),
                Text(
                  'Invited Employees',
                  style: primarystyle,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://oceanfdn.org/wp-content/uploads/2010/08/SargassoSea.jpg"),
                ),
                Dividerline(
                  rightend: 10,
                  liftend: 10,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Text(
                  'Workspaces\'s Tasks',
                  style: primarystyle,
                )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'In Progress',
                  style: styleboldb,
                ),
                Dividerline(
                  rightend: 260,
                  liftend: 10,
                ),
                RowWid(
                  text: 'Check DB',
                ),
                Text('Done', style: styleboldb),
                Dividerline(
                  rightend: 240,
                  liftend: 10,
                ),
                RowWid(
                  text: 'Fix bugs',
                ),
                SizedBox(
                  height: 40,
                ),
                Buttondown(
                  txt: 'New Task',
                ),
                SizedBox(
                  height: 7,
                ),
                Buttondown(
                  txt: 'Edit Workspace',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
