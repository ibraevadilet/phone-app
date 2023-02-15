import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_app/core/blocs/bottom_navigator_cubit/bottom_navigator_cubit.dart';
import 'package:phone_app/features/home/data/phone_list.dart';
import 'package:phone_app/features/home/presentation/home_main/home_main_screen.dart';
import 'package:phone_app/features/profile/profile_screen.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigatorCubit, BottomNavigatorState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: pages[state.index],
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.black,
              unselectedFontSize: 12,
              selectedLabelStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
              unselectedItemColor: Colors.black,
              currentIndex: state.index,
              onTap: (index) {
                context.read<BottomNavigatorCubit>().getCurrentPage(index);
              },
              items: const [
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.phone_android, color: Colors.green),
                  icon: Icon(Icons.phone_android, color: Colors.grey),
                  label: 'Телефоны',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.person, color: Colors.green),
                  icon: Icon(Icons.person, color: Colors.grey),
                  label: 'Профиль',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

List<Widget> pages = [
  const HomeMainScreen(),
  const ProfileScreen(),
];
