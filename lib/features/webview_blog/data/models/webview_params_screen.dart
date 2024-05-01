import 'package:freezed_annotation/freezed_annotation.dart';
part 'webview_params_screen.freezed.dart';
part 'webview_params_screen.g.dart';

@freezed
class WebviewParamsScreen with _$WebviewParamsScreen {
  const factory WebviewParamsScreen({
    required final String webviewUrl,
    required final String title,
  }) = _WebviewParamsScreen;

  factory WebviewParamsScreen.fromJson(Map<String, dynamic> json) =>
      _$WebviewParamsScreenFromJson(json);
}
