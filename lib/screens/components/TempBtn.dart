import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constanins.dart';

class TempBtn extends StatelessWidget {
  final String svgSrc;
  final String title;
  final bool isActive;
  final VoidCallback press;
  final Color color;

  const TempBtn(
      {Key? key,
      required this.svgSrc,
      this.isActive = false,
      required this.press,
      required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: isActive ? 76 : 50,
            width: isActive ? 76 : 50,
            child: SvgPicture.asset(
              svgSrc,
              color: isActive ? color : Colors.white38,
            ),
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          AnimatedDefaultTextStyle(
            duration: Duration(milliseconds: 200),
            style: TextStyle(
                fontSize: 16,
                color: isActive ? color : Colors.white38,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal),
            child: Text(
              title.toUpperCase(),
            ),
          ),
        ],
      ),
    );
  }
}
