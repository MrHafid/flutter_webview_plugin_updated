import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_webview_plugin_updated/flutter_webview_plugin_updated.dart';
import 'package:flutter_webview_plugin_updated/flutter_webview_plugin_updated_platform_interface.dart';
import 'package:flutter_webview_plugin_updated/flutter_webview_plugin_updated_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterWebviewPluginUpdatedPlatform
    with MockPlatformInterfaceMixin
    implements FlutterWebviewPluginUpdatedPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterWebviewPluginUpdatedPlatform initialPlatform = FlutterWebviewPluginUpdatedPlatform.instance;

  test('$MethodChannelFlutterWebviewPluginUpdated is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterWebviewPluginUpdated>());
  });

  test('getPlatformVersion', () async {
    FlutterWebviewPluginUpdated flutterWebviewPluginUpdatedPlugin = FlutterWebviewPluginUpdated();
    MockFlutterWebviewPluginUpdatedPlatform fakePlatform = MockFlutterWebviewPluginUpdatedPlatform();
    FlutterWebviewPluginUpdatedPlatform.instance = fakePlatform;

    expect(await flutterWebviewPluginUpdatedPlugin.getPlatformVersion(), '42');
  });
}
