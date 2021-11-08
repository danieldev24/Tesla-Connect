import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constanins.dart';

class TyreHeat extends StatelessWidget {
  final BoxConstraints constrains;
  final bool isFront;
  final bool isHeat;
  final int temp;
  final double psi;

  const TyreHeat(
      {Key? key,
      required this.constrains,
      this.isFront = false,
      this.isHeat = false, required this.temp, required this.psi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: constrains.maxWidth / 2,
      height: constrains.maxHeight / 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: isHeat ? Colors.red.withOpacity(0.15) : Colors.white10,
          border:
              Border.all(color: isHeat ? redColor : primaryColor, width: 2)),
      child: Padding(
        padding: EdgeInsets.all(defaultPadding),
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                top: isFront
                    ? constrains.maxHeight /6
                    : constrains.maxHeight / 12,
                child: SvgPicture.asset("assets/icons/FL_Tyre.svg")),
            Positioned(
              left: 0,
              top: isFront ? 0 : (constrains.maxHeight / 3 - 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${temp}" + "\u2103",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: Colors.white70),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Text(
                    "${psi}psi",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
            Visibility(
                visible: isHeat,
                child: Positioned(
                  left: 0,
                  bottom: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Low".toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "pressure".toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Colors.white70),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
