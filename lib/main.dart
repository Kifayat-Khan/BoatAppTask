import 'linker.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boat App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(

      primary: const Color(0xff001B48)
      //secondary: const Colors.yellow.shade700,
    ),
        
      ),
      initialBinding: AllBindings(),
      home: const SplashView(),
    );
  }
}
