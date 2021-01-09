import 'package:stacked/stacked.dart';

class FutureExampleViewModel extends FutureViewModel {
  Future<String> getDataFromServer() async {
    await Future.delayed(Duration(seconds: 2));
    // return "Fetched from server";
    throw Exception('This broke dude!');
  }

  @override
  Future futureToRun() => getDataFromServer();
}
