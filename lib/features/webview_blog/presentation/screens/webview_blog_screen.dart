// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewBlogScreen extends StatefulWidget {
  final WebviewParamsScreen webviewParams;
  const WebviewBlogScreen({
    super.key,
    required this.webviewParams,
  });

  @override
  State<WebviewBlogScreen> createState() => _WebviewBlogScreenState();
}

class _WebviewBlogScreenState extends State<WebviewBlogScreen> {
  late final WebViewController? webviewController;

  @override
  void initState() {
    webviewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..loadRequest(Uri.parse(widget.webviewParams.webviewUrl));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      appBar: DefaultAppBar(
        title: widget.webviewParams.title,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 28,
            color: AppColors.white,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              AppUtils.copyLink(
                context,
                widget.webviewParams.webviewUrl,
                'Tautan berhasil disalin',
              );
            },
            icon: const Icon(
              Icons.share,
              color: AppColors.white,
            ),
          )
        ],
      ),
      body: webviewController == null
          ? Container()
          : WebViewWidget(controller: webviewController!),
    );
  }
}
