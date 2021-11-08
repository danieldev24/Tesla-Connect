import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesla_animated_app/home_controller.dart';

import '../../constanins.dart';
import 'TempBtn.dart';

class TempoDetail extends StatelessWidget {
  final HomeController controller;
  final VoidCallback upPress;
  final VoidCallback downPress;

  const TempoDetail({Key? key, required this.controller, required this.upPress, required this.downPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            child: Row(
              children: [
                TempBtn(
                  svgSrc: "assets/icons/coolShape.svg",
                  isActive: controller.isCoolSelected,
                  press: () => {controller.updateCool()},
                  title: "Cool",
                  color: primaryColor,
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                TempBtn(
                  svgSrc: "assets/icons/heatShape.svg",
                  isActive: !controller.isCoolSelected,
                  press: () => {controller.updateCool()},
                  title: "Heat",
                  color: redColor,
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            children: [
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: upPress,
                  icon: Icon(
                    Icons.arrow_drop_up,
                    size: 48,
                  )),
              Text(
                "${controller.tempo}" + "\u2103",
                style: TextStyle(fontSize: 86),
              ),
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: downPress,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 48,
                  )),
            ],
          ),
          Spacer(),
          Text("Current temperature".toUpperCase()),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Inside".toUpperCase()),
                  Text(
                    "${controller.tempo - 9}" + "\u2103",
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Inside".toUpperCase(),
                    style: TextStyle(color: Colors.white54),
                  ),
                  Text(
                    "${controller.tempo + 5}" + "\u2103",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.white54),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
