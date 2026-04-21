import 'package:emart_app/views/splash_screen/splash_screen.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  debugPrint("Binding initialized");

  await Firebase.initializeApp();
  debugPrint("Firebase initialized");

  runApp(const MyApp());
  debugPrint("App started");
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // So we are using getx so we need to change this material app to getmaterial app
    return GetMaterialApp(
      // return MaterialApp(
      // This is used to remove debug banner
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,

          // to set app bar theme
          iconTheme: IconThemeData(color: darkFontGrey),
        ),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
