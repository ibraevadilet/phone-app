import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_app/features/splash/splash_cubit/splash_cubit.dart';
import 'package:phone_app/routes/mobile_app_router.dart';
import 'package:phone_app/server/service_locator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SplashCubit>(
        create: (context) => sl<SplashCubit>(),
        child: BlocConsumer<SplashCubit, SplashState>(
          listener: (context, state) {
            state.whenOrNull(
              unauthenticated: () => context.router.pushAndPopUntil(
                const AuthScreenRoute(),
                predicate: (route) => false,
              ),
              authenticated: () => context.router.pushAndPopUntil(
                const BottomNavigatorRoute(),
                predicate: (route) => false,
              ),
            );
          },
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 140),
                    child: Icon(Icons.phone_iphone),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Мобильные телефоны',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
