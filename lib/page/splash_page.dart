import 'package:dogs/constant/app_constant.dart';
import 'package:dogs/page/base_widget.dart';
import 'package:dogs/page/page_model/splash_page_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashPageModel _splashPageModel;

  @override
  void initState() {
    super.initState();
    // check auth ..v..v
    _splashPageModel = new SplashPageModel(navigationService: Provider.of(context, listen: false));
  }

  goToHome() {
    Navigator.of(context).popAndPushNamed(AppRouter.home);
    return;
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget<SplashPageModel>(
      model: _splashPageModel,
      onModelReady: (_model) => _model.init(),
      builder: (context, model, child) {

        return Material(child: Center(
          child: Container(
            height: 400,
            width: 300,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/loading.gif'))),
          ),
        ),);
      }
    );

  }
}

