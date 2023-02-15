import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_app/core/blocs/bottom_navigator_cubit/bottom_navigator_cubit.dart';
import 'package:phone_app/server/service_locator.dart';

class InitWidget extends StatelessWidget {
  const InitWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<BottomNavigatorCubit>(),
        ),
      ],
      child: child,
    );
  }
}
