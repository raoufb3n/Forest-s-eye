import 'package:ainechack/features/Profile/ProfileScreen.dart';
import 'package:ainechack/features/home/view/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(Home());
  int currentIndex = 0;
  static LayoutCubit get(context) => BlocProvider.of(context);
  List<Widget> screens = const [HomePage(), ProfileScreen()];
  void changePageIndex(int index) {
    currentIndex = index;
    emit(Home());
  }
}
