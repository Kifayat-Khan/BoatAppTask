// ignore_for_file: prefer_const_constructors

import 'package:boot_app_task/linker.dart';
class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<SplashController>();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 95,
            child:Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/splshimag.png",height: 300,width: 200,),
                CircularProgressIndicator(strokeWidth: 4,color: const Color(0xff001B48),)
              ],
            )) 
          ),
          Expanded(
            flex: 5,
            child: customText("Boat App", 16, Color(0xff262323), FontWeight.w500, () { })
          )
        ],
      ),
    );
  }
}