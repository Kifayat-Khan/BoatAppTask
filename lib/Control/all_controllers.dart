// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:boot_app_task/linker.dart';

//____________________________________________________________splashView controller
class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(Duration(seconds: 4), () {
      Get.to(() => SignInView());
    });
    super.onInit();
  }
}

//_______________________________________________________home controller
class HomeController extends GetxController {
  int activeColor = 1;
}

//_______________________________________________________search controller

class SearchController extends GetxController {
  RangeValues currentPriceRange = const RangeValues(0, 20000);
  RangeValues currentTimeRange = const RangeValues(0, 200);
  currentPriceValue(var value) {
    currentPriceRange = value;
    update();
  }

  currentTimeValue(var value) {
    currentTimeRange = value;
    update();
  }
}

//____________________________________________________boat detials controller
class BoatDetailsController extends GetxController {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void onInit() {
    // TODO: implement onInit

    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    );

    _initializeVideoPlayerFuture = _controller.initialize();
    super.onInit();
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //    _controller.dispose();
  //   super.dispose();
  // }

  playvideo() {
    return FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the aspect ratio of the video.
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              // Use the VideoPlayer widget to display the video.
              child: VideoPlayer(_controller),
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
    update();
  }

  startStop() {
    // If the video is playing, pause it.
    if (_controller.value.isPlaying) {
      _controller.pause();
    } else {
      // If the video is paused, play it.
      _controller.play();
    }
    update();
  }
}
