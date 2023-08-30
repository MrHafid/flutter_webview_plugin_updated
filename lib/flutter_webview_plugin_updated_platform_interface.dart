import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_webview_plugin_updated_method_channel.dart';

abstract class FlutterWebviewPluginUpdatedPlatform extends PlatformInterface {
  /// Constructs a FlutterWebviewPluginUpdatedPlatform.
  FlutterWebviewPluginUpdatedPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterWebviewPluginUpdatedPlatform _instance = MethodChannelFlutterWebviewPluginUpdated();

  /// The default instance of [FlutterWebviewPluginUpdatedPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterWebviewPluginUpdated].
  static FlutterWebviewPluginUpdatedPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterWebviewPluginUpdatedPlatform] when
  /// they register themselves.
  static set instance(FlutterWebviewPluginUpdatedPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
