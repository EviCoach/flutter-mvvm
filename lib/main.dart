import 'package:flutter/material.dart';
import 'package:mvvm_app/app/locator.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/router.gr.dart' as Router;
import 'ui/views/stream_example/stream_example_view.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: ExtendedNavigator.builder<Router.Router>(
      //     router: Router.Router(),
      //     builder: (context, extendedNav) => Theme(
      //           data: ThemeData(brightness: Brightness.dark),
      //           child: extendedNav,
      //         )),
      title: 'Flutter MVVM Using Stacked',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // initialRoute: Router.Routes.startupView,
      // Testing only
      // home: PartialBuildsView(),
      // home: ReactiveExampleView(),
      // home: FutureExampleView(),
      home: StreamExampleView(),
      onGenerateRoute: Router.Router(),
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
