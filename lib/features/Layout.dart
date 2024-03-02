import 'package:ainechack/core/helpers/commonLibs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home/view-model/Logic/cubit/layout_cubit.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        final LayoutCubit cubit = LayoutCubit.get(context);
        return Scaffold(
          body: SafeArea(child: cubit.screens[cubit.currentIndex]),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
            currentIndex: cubit.currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      cubit.changePageIndex(0);
                    },
                    icon: Image.asset(
                      Assets.home,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      cubit.changePageIndex(1);
                    },
                    icon: Image.asset(
                      Assets.user,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  label: 'User'),
            ],
          ),
        );
      },
    );
  }
}
