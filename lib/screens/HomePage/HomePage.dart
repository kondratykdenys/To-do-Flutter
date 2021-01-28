import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/components/TaskView.dart';
import 'package:flutter_to_do_list/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: TaskView(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Row(
        children: [
          Container(
              padding: EdgeInsets.all(45),
              child: Text(
                'Today',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.1),
              )),
          Spacer(),
          ClipOval(
            child: Material(
              color: kBackgroundColor,
              child: InkWell(
                child: SizedBox(
                    width: 56,
                    height: 56,
                    child: Icon(
                      Icons.more_horiz,
                      color: kBlue,
                    )),
                onTap: () {},
              ),
            ),
          )
        ],
      ),
      elevation: 0,
    );
  }
}
