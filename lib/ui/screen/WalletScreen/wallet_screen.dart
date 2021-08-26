import 'package:app/ui/screen/DepositScreen/deposit_screen.dart';
import 'package:app/ui/screen/WalletScreen/widgets/recent_transactions_list.dart';
import 'package:app/ui/screen/WalletScreen/widgets/scroll_card_widget.dart';
import 'package:app/ui/widgets/card_item_rounded.dart';
import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

import '../Home/cubit/navigation_bar_cubit.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScrollCardWidget(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CardItemRounded(
                      iconPath: "assets/ic_deposit.svg",
                      title: "Deposit",
                      onTap: () {
                        NavigationBarCubit.get(context).changePages(
                            page: PageData(
                                title: "Deposit", page: DepositScreen()));
                      },
                    ),
                    CardItemRounded(
                      iconPath: "assets/ic_payment.svg",
                      title: "Payment",
                      onTap: () {},
                    ),
                    CardItemRounded(
                      iconPath: "assets/ic_withdrawal.svg",
                      title: "Withdrawal",
                      onTap: () {},
                    ),
                  ],
                ),
                RecentTransactionsList(
                  title: "Recent Transactions",
                  recentTransactionsItem: [
                    RecentTransactionsItem(
                      date: "May24",
                      time: "4:37pm",
                      status: "Account Activation",
                      price: "16",
                      labels: [
                        LabelWidget(
                            title: "بطاقة المنح الجامعية",
                            backgroundColor: MyColors.blueColor),
                        LabelWidget(
                            title: "Debit",
                            backgroundColor: MyColors.brownColor),
                      ],
                    ),
                    RecentTransactionsItem(
                      date: "May24",
                      time: "4:37pm",
                      status: "Account Activation",
                      price: "16",
                      labels: [
                        LabelWidget(
                            title: "بطاقة المنح الجامعية",
                            backgroundColor: MyColors.blueColor),
                        LabelWidget(
                            title: "Debit",
                            backgroundColor: MyColors.brownColor),
                      ],
                    ),
                    RecentTransactionsItem(
                      date: "May24",
                      time: "4:37pm",
                      status: "Account Activation",
                      price: "16",
                      labels: [
                        LabelWidget(
                            title: "بطاقة المنح الجامعية",
                            backgroundColor: MyColors.blueColor),
                        LabelWidget(
                            title: "Debit",
                            backgroundColor: MyColors.brownColor),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
