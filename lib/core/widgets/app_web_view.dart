import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;


typedef WebViewCreatedCallback = void Function(WebViewController controller);


class AppWebView extends StatefulWidget {
  WebViewCreatedCallback onWebViewCreatedCallback;
  final String url;
   AppWebView({super.key, required this.url, required this.onWebViewCreatedCallback});

  @override
  State<AppWebView> createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebView> {
    late WebViewController controller;


  @override
  void initState() {
    controller = WebViewController();
    widget.onWebViewCreatedCallback(controller);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    if(widget.url.startsWith("http") || (widget.url.startsWith("www"))){
       controller.loadRequest(Uri.parse(widget.url));
    }else if(widget.url.startsWith("<!Doctype")){
       controller.loadHtmlString(widget.url);
    }else if(widget.url.endsWith(".html") || (widget.url.endsWith(".htm"))){
       controller.loadFlutterAsset('assets/your_asset_file.html');

    }      
        return WebViewWidget(controller: controller);

  }
}