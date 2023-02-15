import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_app/routes/mobile_app_router.dart';
import 'package:phone_app/server/service_locator.dart';
import 'package:phone_app/widgets/init_widget.dart';

final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
final appRouter = sl<MobileAppRouter>();

void main() async {
  
  await init();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InitWidget(
      child: Builder(
        builder: (context) => MaterialApp.router(
          scaffoldMessengerKey: scaffoldKey,
          title: 'Phone',
          debugShowCheckedModeBanner: false,
          routeInformationParser: appRouter.defaultRouteParser(),
          routerDelegate: AutoRouterDelegate(appRouter),
          routeInformationProvider: appRouter.routeInfoProvider(),
        ),
      ),
    );
  }
}
