import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Containers extends StatefulWidget {
  String cont;
  dynamic color;
  dynamic containerColor;

  Containers({Key key, this.cont, this.color,this.containerColor}) : super(key: key);
  @override
  _ContainersState createState() => _ContainersState();
}
class _ContainersState extends State<Containers> {
  dynamic containerColor;
  dynamic borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 80.0,
            width: 80.0,
            child: Center(
              child: Text(
                widget.cont,
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w400,
                    color: widget.color),
              ),
            ),
            decoration: BoxDecoration(
              color: widget.containerColor,
              border: Border.all(color: widget.containerColor,width: 1),
              borderRadius: BorderRadius.all(Radius.circular(18.0)),
            ),
      );
  }
}
