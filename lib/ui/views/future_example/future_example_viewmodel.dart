import 'package:stacked/stacked.dart';

class FutureExampleViewModel extends FutureViewModel<String> {
  Future<String> getDataFromServer() async {
    await Future.delayed(Duration(seconds: 6));
    return "Fetched from server";
    // throw Exception('This broke dude!');
  }

  @override
  Future<String> futureToRun() => getDataFromServer();
}
