import 'package:stacked/stacked.dart';

class StreamExampleViewModel extends StreamViewModel<int> {
  String get title => "This is the time since epoch\n $data";
  bool _otherSource = false;

  void swapSource() {
    _otherSource = !_otherSource;
    notifySourceChanged();
  }

  @override
  Stream<int> get stream =>
      _otherSource ? epochUpdates() : epochUpdatesFaster();

  Stream<int> epochUpdates() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  Stream<int> epochUpdatesFaster() async* {
    while (true) {
      await Future.delayed(Duration(milliseconds: 300));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }
}
