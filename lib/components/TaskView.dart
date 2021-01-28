import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/constants.dart';

class TaskView extends StatefulWidget {
  @override
  _TaskViewState createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  static bool isCheked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isCheked = !isCheked;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isCheked ? kBlue : kBackgroundColor,
                      border:
                          Border.all(color: Color.fromRGBO(218, 218, 218, 1))),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: isCheked
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
                child: Text('Start making a presentation'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
