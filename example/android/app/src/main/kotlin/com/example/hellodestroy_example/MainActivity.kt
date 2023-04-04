package com.example.hellodestroy_example

import android.util.Log
import io.flutter.embedding.android.FlutterActivity


private const val TAG = "onDestroyIssue"

class MainActivity: FlutterActivity() {

    override fun onDestroy() {
        Log.d(TAG, "onDestroy from MainActivity: FlutterActivity")
        super.onDestroy()
    }
}
