import 'package:flutter/material.dart';

class ListHeadingText extends StatelessWidget {
  final String text;
  const ListHeadingText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Stack(
        children: [
          Text(
            text,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w800,
              //overflow: TextOverflow.ellipsis,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 2
                ..color = Colors.white,
            ),
          ),
          Text(
            text,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w800,
              //overflow: TextOverflow.ellipsis,
              foreground: Paint()..color = Colors.red.shade900,
            ),
          ),
        ],
      ),
    );
  }
}
