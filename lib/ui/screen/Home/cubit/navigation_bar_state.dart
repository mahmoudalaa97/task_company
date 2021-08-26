part of 'navigation_bar_cubit.dart';

abstract class NavigationBarState extends Equatable {
  const NavigationBarState();
}

class NavigationBarInitial extends NavigationBarState {
  @override
  List<Object> get props => [];
}


class NavigationBarChangePageState extends NavigationBarState {
  final PageData pageData;

  NavigationBarChangePageState(this.pageData);
  @override
  List<Object> get props => [this.pageData];
}