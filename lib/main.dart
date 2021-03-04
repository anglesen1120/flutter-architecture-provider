import 'package:dogs/constant/app_constant.dart';
import 'package:dogs/provider_setup.dart';
import 'package:dogs/service/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dogs/route.dart' as route;

void main() {
  runApp(DogsApp());
}

class DogsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: providers,
      child: MaterialApp(
        onGenerateRoute: route.generateRoute,
        initialRoute: '/',
        routes: route.listRoute,
        navigatorKey: NavigationService.navigationKey,
      ),
    );
    throw UnimplementedError();
  }
}
