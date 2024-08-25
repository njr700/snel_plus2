import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'frontend/controllers/MenuAppController.dart';
import 'frontend/pages/splash.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Vérifier si Firebase est déjà initialisé
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snel + Desktop',
      // theme: ThemeData(
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      //   brightness: Brightness.dark
      // ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuAppController(),
          ),
        ],
        child: const Splash(),
      ),
    );
  }
}