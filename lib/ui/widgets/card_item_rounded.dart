import 'package:app/utils/colors.dart';
import 'package:app/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardItemRounded extends StatelessWidget {
  final String iconPath;
  final String title;
  final Function onTap;

  const CardItemRounded({Key? key,required this.iconPath,required this.title,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onTap(),
      child: Container(
        width: 100,
        padding: EdgeInsets.symmetric(vertical: 14,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: MyColors.blueColor,
        ),
        child: Column(
          children: [
            SvgPicture.asset("$iconPath",color: Colors.white,),
            SizedBox(height: 7,),
            Text("$title",style: MyStyle.textStyle(fontSize: 13, color: Colors.white,fontWeight: FontWeight.w400),)
          ],
        ),
      ),
    );
  }
}
