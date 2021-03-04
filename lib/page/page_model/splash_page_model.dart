import 'package:dogs/constant/app_constant.dart';
import 'package:dogs/page/page_model/base_model.dart';
import 'package:dogs/service/navigation_service.dart';

class SplashPageModel extends BaseModel {
  NavigationService _navigationService;
  SplashPageModel({NavigationService navigationService}) {
    _navigationService = navigationService;
  }

  Future init() async {
    // check auth ...

    goHome();
  }

  goHome() async {
     await Future.delayed(Duration(seconds: 3), () {
      _navigationService.pushReplacementNamed(AppRouter.home);
    });
  }

}