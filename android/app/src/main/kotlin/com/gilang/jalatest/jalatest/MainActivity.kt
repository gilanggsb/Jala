package com.gilang.jalatest.jalatest

import android.app.AlertDialog
import android.os.Bundle
import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.KeyData.CHANNEL
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    val MAIN_CHANNEL = "jala_main_channel"
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            MAIN_CHANNEL
        ).setMethodCallHandler { call, result ->
            if (call.method == "show_native_dialog") {
                val arguments = call.arguments as? Map<*, *>
                val title = arguments?.get("title") as? String
                val message = arguments?.get("message") as? String
                if (title != null && message != null) {
                    showAlert(title, message)
                    result.success(null)
                } else {
                    result.error("INVALID_ARGUMENT", "Missing title or message", null)
                }
            } else {
                result.notImplemented()
            }
        }
    }

    private fun showAlert(title: String, message: String) {
        AlertDialog.Builder(this)
            .setTitle(title)
            .setMessage(message)
            .setPositiveButton("OK") { dialog, _ ->
                dialog.dismiss()
            }
            .show()
    }
}
