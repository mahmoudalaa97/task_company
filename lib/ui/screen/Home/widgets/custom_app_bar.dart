import 'package:app/utils/colors.dart';
import 'package:app/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  final String? logoPath;
  final String title;
  final List<Widget>? actions;

  const CustomAppBar(
      {Key? key, required this.title, this.logoPath, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: MyColors.blueColor, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))),
      padding: EdgeInsets.only(top: 60, bottom: 20, left: 10, right: 10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "$logoPath",
                  width: 30,
                  height: 30,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "$title",
                style: MyStyle.textStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: actions ?? [],
            ),
          )
        ],
      ),
    );
  }
}
