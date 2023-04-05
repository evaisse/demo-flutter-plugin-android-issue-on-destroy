package com.example.hellodestroy

import android.util.Log
import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

private const val TAG = "FlutterPluginActivity"

/** HellodestroyPlugin */
class HellodestroyPlugin: FlutterPlugin, MethodCallHandler, ActivityAware {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    Log.d(TAG, "onAttachedToActivity")
  }

  override fun onDetachedFromActivityForConfigChanges() {
    Log.d(TAG, "onDetachedFromActivityForConfigChanges")
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    Log.d(TAG, "onReattachedToActivityForConfigChanges")
  }

  override fun onDetachedFromActivity() {
    Log.d(TAG, "onDetachedFromActivity")
  }

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    Log.d(TAG, "onAttachedToEngine")
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "hellodestroy")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    Log.d(TAG, "onDetachedFromEngine")
    channel.setMethodCallHandler(null)
  }
}
