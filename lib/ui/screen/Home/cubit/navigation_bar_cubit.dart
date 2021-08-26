import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../WalletScreen/wallet_screen.dart';

part 'navigation_bar_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  NavigationBarCubit() : super(NavigationBarInitial());

  static NavigationBarCubit get(context)=>BlocProvider.of(context);
   PageData? pageData;

  void changePages({int? index,PageData? page}) {
    if (page == null) {
      switch (index) {
        case 0:
          pageData = PageData(
              title: "Home",
              page: Center(
                child: Text("Home"),
              ));

          break;

        case 1:
          pageData = PageData(title: "Wallet", page: WalletScreen());
          break;

        case 2:
          pageData = PageData(
              title: "Company",
              page: Center(
                child: Text("Company"),
              ));
          break;

        case 3:
          pageData = PageData(
              title: "Settings",
              page: Center(
                child: Text("Settings"),
              ));
          break;

        case 4:
          pageData = PageData(
              title: "Profile",
              page: Center(
                child: Text("Profile"),
              ));
          break;
        default:
          pageData = PageData(
              title: "Error",
              page: Center(
                child: Text("Error"),
              ));
          break;
      }
    } else {
      pageData = page;
    }
    emit(NavigationBarChangePageState(pageData!));
  }
}

class PageData {
  final String title;
  final Widget page;

  PageData({required this.title, required this.page});
}
