
import 'flutter_webview_plugin_updated_platform_interface.dart';

class FlutterWebviewPluginUpdated {
  Future<String?> getPlatformVersion() {
    return FlutterWebviewPluginUpdatedPlatform.instance.getPlatformVersion();
  }
}
