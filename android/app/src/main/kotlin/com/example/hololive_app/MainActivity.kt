package xyz.kaze.holoschedule

import android.os.Build
import android.os.Bundle
import androidx.core.view.WindowCompat
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // WindowCompat.setDecorFitsSystemWindows(window, false)
    }
}
