import 'package:app/utils/colors.dart';
import 'package:app/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentTransactionsList extends StatelessWidget {
  final String? title;

  final List<RecentTransactionsItem>? recentTransactionsItem;

  const RecentTransactionsList(
      {Key? key, required this.title, required this.recentTransactionsItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 35,
            ),
            child: Text(
              "Recent Transactions",
              style: MyStyle.textStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: ListView.builder(
                itemCount: recentTransactionsItem!.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return recentTransactionsItem![index];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecentTransactionsItem extends StatelessWidget {
  final String? date;
  final String? time;
  final String? status;
  final String? price;

  final List<LabelWidget>? labels;

  const RecentTransactionsItem({
    Key? key,
    this.date,
    this.time,
    this.status,
    this.price,
    this.labels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 5,
                offset: Offset(0, 2))
          ]),
      margin: EdgeInsets.only(bottom: 10,left: 2,right: 2),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "$date",
                  style: MyStyle.textStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: labels!.toList(),
                ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                "$time",
                style:
                    MyStyle.textStyle(fontSize: 12, color: MyColors.brownColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$status",
                    style: MyStyle.textStyle(
                        fontSize: 13,
                        color: MyColors.grayColor,
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/ic_payment.svg"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "$price",
                        style: MyStyle.textStyle(
                            fontSize: 12, color: MyColors.brownColor),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LabelWidget extends StatelessWidget {
  final String title;
  final Color backgroundColor;

  const LabelWidget({Key? key,required this.title,required this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(3)
      ),
      padding: EdgeInsets.symmetric(horizontal: 13),
      margin: EdgeInsets.symmetric(horizontal: 3),
      child: Center(child: Text("$title",style: MyStyle.textStyle(fontSize: 11, color: Colors.white),)),
    );
  }
}
