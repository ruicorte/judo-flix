import 'package:flutter/material.dart';

class Tech extends StatefulWidget {
  final item;
//  final String nav;
  Tech({this.item});
  State<StatefulWidget> createState() => _TechState();
}

class _TechState extends State<Tech> {
  double ratio;

  initState() {
    super.initState();
    ratio = 2 / 3;
  }

  Widget build(BuildContext ctx) {
    return Padding(
      padding: EdgeInsets.all(3.0),
      child: AspectRatio(
        aspectRatio: ratio,
        child: GestureDetector(
          onTap: () {
            setState(() => ratio = ratio == 2 / 3 ? 16 / 9 : 2 / 3);
          },
          child: Container(
            color: widget.item['color'],
            child: Center(
              child: Text(
                widget.item['txt'],
                style: Theme.of(context).textTheme.headline,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
