import 'package:flutter/material.dart';

class BackgroundColors extends StatelessWidget {
  const BackgroundColors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.red.shade900,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.red.shade700,
            // child: SafeArea(
            //   child: Transform(
            //     transform: Matrix4.translationValues(-10, 80, 0),
            //     // ..rotateZ(math.pi / 2),
            //     child: Text(
            //       '>Home',
            //       style: TextStyle(
            //         color: Colors.red.shade900,
            //         fontSize: 60.0,
            //         fontWeight: FontWeight.w800,
            //       ),
            //     ),
            //   ),
            // ),
          ),
        )
      ],
    );
  }
}
