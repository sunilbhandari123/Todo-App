import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class bottton extends StatelessWidget {
  bottton({
    required this.text,
    required this.colr,
    required this.colour,
    required this.onTab,
  });
  final String text;
  final Color colr;
  final Color colour;
  final void Function() onTab;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 40,
        width: 120,
        decoration: BoxDecoration(
          color: colr,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Text(text,
                style: TextStyle(fontWeight: FontWeight.bold, color: colour))),
      ),
      onTap: onTab
    );
  }
}
