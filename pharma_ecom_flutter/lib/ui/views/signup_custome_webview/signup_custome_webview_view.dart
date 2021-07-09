import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/signup_custome_webview/signup_custome_webview_view_model.dart';
import 'package:stacked/stacked.dart';

class SignUpCustomWebView extends StatelessWidget {
  final String selectedUrl;
  const SignUpCustomWebView({Key key, this.selectedUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpCusomeWebViewModel>.reactive(
      viewModelBuilder: () => SignUpCusomeWebViewModel(),
      onModelReady: (model) => model.loadData(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          top: true,
          child: Stack(
            children: <Widget>[
              WebviewScaffold(
                  url: selectedUrl,
                  appBar: new AppBar(
                    backgroundColor: Color.fromRGBO(66, 103, 178, 1),
                    title: new Text("Facebook login"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

// class CustomWebView extends StatefulWidget {
//   @override
//   _CustomWebViewState createState() => _CustomWebViewState();
// }

// class _CustomWebViewState extends State<CustomWebView> {
//   final flutterWebviewPlugin = new FlutterWebviewPlugin();

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
