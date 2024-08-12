import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/consts/consts.dart';
import 'package:flutter_application_1/views/splash_screen/splash_screen.dart';
import 'package:get/get.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
  
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //we are using getx so need to change material in get materialapp
    return KhaltiScope(
      publicKey: "test_public_key_168adc4db74f43f8b212ff14c5790bc4",
      builder: (context,navigatorKey) {
      return GetMaterialApp(
      navigatorKey: navigatorKey, 
      supportedLocales: const [
      Locale('en','US'),
      Locale('ne','NP'),
      ],
      localizationsDelegates: const [
      KhaltiLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title: 'The Choice',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          //to set app bar icons color
          iconTheme: IconThemeData(
            color: darkFontGrey,
          ),
          elevation: 0.0,
          backgroundColor:Colors.transparent),
        fontFamily: regular,
        
      ),
      home: const SplashScreen(),
      
    );
      });
  }
}
//testing
