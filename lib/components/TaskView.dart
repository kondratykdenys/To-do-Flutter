import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/constants.dart';

class TaskView extends StatefulWidget {
  TaskView({Key key, this.title, this.isChecked}) : super(key: key);

  final String title;
  final bool isChecked;

  @override
  _TaskViewState createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 15),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.isChecked ? kBlue : kBackgroundColor,
                  border: Border.all(color: Color.fromRGBO(218, 218, 218, 1))),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: widget.isChecked
                    ? Icon(
                        Icons.check,
                        size: 14.0,
                        color: Colors.white,
                      )
                    : Icon(
                        Icons.check,
                        size: 14.0,
                        color: Colors.white,
                      ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(widget.title),
          )
        ],
      ),
    );
  }
}
