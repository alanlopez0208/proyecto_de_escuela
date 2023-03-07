import "package:flutter/material.dart";
import "package:webview_flutter/webview_flutter.dart";

class WebView extends StatefulWidget{

  const WebView({super.key});
  @override
  State<StatefulWidget> createState() {
    return _WebViewEjemplo();
  }
}

class _WebViewEjemplo extends State<WebView>{
  late final WebViewController controlador;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WebViewWidget(controller: controlador));
  }

  @override
  void initState() {
    super.initState();
    controlador = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse("https://www.naturalista.mx/places/11166"));
  }
}