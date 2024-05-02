enum RouteName {
  detailShrimpPrices('Detail Shrimp Price', 'detail'),
  shrimpPrices('Shrimp Prices', '/shrimp-prices'),
  webviewBlog('Webview Blog', '/webview-blog'),
  diseases('Penyakit', '/penyakit'),
  jalaMedia('Jala Media', '/jala-media'),
  splash('Splash', '/');

  final String name;
  final String pathName;
  const RouteName(this.name, this.pathName);
}
