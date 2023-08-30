import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_webview_plugin_updated/flutter_webview_plugin_updated_method_channel.dart';

void main() {
  MethodChannelFlutterWebviewPluginUpdated platform = MethodChannelFlutterWebviewPluginUpdated();
  const MethodChannel channel = MethodChannel('flutter_webview_plugin_updated');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
