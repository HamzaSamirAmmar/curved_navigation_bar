import 'package:flutter/material.dart';

class NavTitle extends StatelessWidget {
  final int index;
  final ValueChanged<int> onTap;
  final String title;
  final TextStyle titleStyle;

  NavTitle({
    required this.index,
    required this.onTap,
    required this.title,
    required this.titleStyle,

  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: (){
          onTap(index);
        },
        child: Center(
          child: Text(
            title,
            style: titleStyle,
          ),
        ),
      ),
    );
  }
}