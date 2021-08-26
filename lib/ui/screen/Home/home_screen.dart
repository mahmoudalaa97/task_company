import 'package:app/ui/screen/Home/cubit/navigation_bar_cubit.dart';
import 'package:app/ui/screen/Home/cubit/navigation_bar_cubit.dart';
import 'package:app/ui/screen/WalletScreen/wallet_screen.dart';
import 'package:app/ui/screen/Home/widgets/custom_app_bar.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    NavigationBarCubit.get(context).changePages(index: 1);

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: BlocBuilder<NavigationBarCubit, NavigationBarState>(
  builder: (context, state) {

    return Column(
          children: [
            CustomAppBar(
              title: NavigationBarCubit.get(context).pageData!.title,
              logoPath: "assets/ic_logo.svg",
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ))
              ],
            ),
            Expanded(child:  NavigationBarCubit.get(context).pageData!.page)
          ],
        );
  },
),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Color(0xff163b7c),
        textColor: Color(0xff163b7c),
        barBackgroundColor: Color(0xfff1f1f1),
        inactiveIconColor: Color(0xffff163b7c).withOpacity(0.4),
        fontSize: 11,
        unSelected: false,
        tabs: [
          TabData(
            iconData: Icons.home,
            title: "Home",
          ),
          TabData(
            iconData: Icons.account_balance_wallet_rounded,
            title: "Wallet",
          ),
          TabData(
            iconData: Icons.home_work_outlined,
            title: "Company",
          ),
          TabData(
            iconData: Icons.settings,
            title: "Settings",
          ),
          TabData(
            iconData: Icons.perm_identity_outlined,
            title: "Profile",
          ),
        ],
        initialSelection: 1,
        onTabChangedListener: (index) {
          NavigationBarCubit.get(context).changePages(index: index);
        },
      ),
    );
  }

 
}

