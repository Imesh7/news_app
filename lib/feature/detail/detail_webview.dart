import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class DetailWebview extends StatefulWidget {
  final String url;
  const DetailWebview({super.key, required this.url});

  @override
  State<DetailWebview> createState() => _DetailWebviewState();
}

class _DetailWebviewState extends State<DetailWebview> {
  WebViewController? _webViewController;

  @override
  void initState() {
    // TODO: implement initState
    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..loadRequest(
        Uri.parse(widget.url),
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebViewWidget(controller: _webViewController!),
    );
  }
}
