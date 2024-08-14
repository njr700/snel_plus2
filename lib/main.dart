import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'backend/firebase/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:snel_plus_2/frontend/pages/admin/connexion.dart';
//import 'package:snel_plus_2/frontend/components/colors/colors.dart';
import 'package:snel_plus_2/frontend/controllers/MenuAppController.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuAppController(),
          ),
        ],
        child: const Connexion(),
      ),
    );
  }
}