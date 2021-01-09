import 'package:flutter/material.dart';
import 'package:mvvm_app/ui/views/future_example/future_example_viewmodel.dart';
import 'package:stacked/stacked.dart';

class FutureExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureExampleViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body:
                  // model.hasError
                  //     ? Container(
                  //         color: Colors.red,
                  //         alignment: Alignment.center,
                  //         child: Text('An error has occurred while running future'),
                  //       )
                  //     :
                  Center(
                child: model.isBusy
                    ? CircularProgressIndicator()
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(model.data ?? 'NO_DATA'),
                          _ErrorMessage()
                        ],
                      ),
              ),
            ),
        viewModelBuilder: () => FutureExampleViewModel());
  }
}

class _ErrorMessage extends ViewModelWidget<FutureExampleViewModel> {
  @override
  Widget build(BuildContext context, FutureExampleViewModel model) {
    return model.hasError
        ? Text(
            model.modelError.message,
            style: TextStyle(color: Colors.red),
          )
        : Container();
  }
}
