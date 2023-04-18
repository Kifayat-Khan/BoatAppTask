import 'package:boot_app_task/linker.dart';

class AllBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => SearchController());
    Get.lazyPut(() => BoatDetailsController());

  }

}