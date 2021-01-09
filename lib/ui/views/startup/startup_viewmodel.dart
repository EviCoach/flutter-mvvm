import 'package:mvvm_app/app/locator.dart';
import 'package:mvvm_app/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel{
  NavigationService _navigationService = locator<NavigationService>();

  Future navigateToHome()async{
    _navigationService.navigateTo(Routes.homeView);
  }
}