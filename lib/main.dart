import 'package:firebase_core/firebase_core.dart';
import 'package:socket_chat/src/my_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyD8Bg4vHc3pn4DxHNHKqHvwKZKUt7NW9P8",
        appId: "1:458793298833:android:390d192289d47734e18830",
        messagingSenderId: "458793298833",
        projectId: "socket-chat-a73e3",
      ),
    );
    runApp(const MyApp());
  } catch (e) {
    debugPrint("==> main error ${e.toString()}");
  }
}
