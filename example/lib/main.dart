import 'package:flutter/material.dart';
import 'package:sl_flutter_widgets/components/alert/sl_alert.dart';
import 'package:sl_flutter_widgets/components/loader/sl_loading_indicator.dart';
import 'package:sl_flutter_widgets/components/progress_bar/sl_liner_progress_bar.dart';
import 'package:sl_flutter_widgets/components/texts/sl_text_hyperlink.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: ListViewBuilder());
  }
}

// ignore: must_be_immutable
class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({Key? key}) : super(key: key);

  /// TextField controller.

  List widgets = ["alert", "linear Progress", "Text Hyper link", "loader"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SL Widgets")),
      body: ListView.builder(
          itemCount: widgets.length,
          itemBuilder: (BuildContext context, int index) {
            return TextButton(
                onPressed: () {
                  switch (index) {
                    case (0):
                      showDialog<SLAlert>(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) => const SLAlert(
                                onlyPositiveButtonCenter: false,
                                backgroundColor: Colors.white,
                                title: "Title",
                                positiveButtonLabel: "Ok",
                                negativeButtonLabel: "Cancel",
                                content: Text("Description Widget"),
                                // onNegativeActionPressed: ,
                                // onPositiveActionPressed: ,
                              ));
                      break;

                    case (1):
                      showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) => const Center(
                            child: SLLinearProgressBar(
                          percentComplete: 50,
                          height: 10,
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.green,
                        )),
                      );
                      break;

                    case (2):
                      showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) => const Center(
                                  child: TextHyperlink(
                                label: "hyperlink text",
                                url: "https://www.google.com",
                                containerMargin: 20,
                                style: TextStyle(color: Colors.white),
                              )));
                      break;

                    case (3):
                      showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) => const Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: SLLoadingIndicator(
                                    color: Colors.black,
                                  ),
                                ),
                              ));
                      break;

                    default:
                  }
                },
                child: Text(widgets[index]));
          }),
    );
  }
}
