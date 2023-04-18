// ignore_for_file: prefer_const_constructors

import 'package:boot_app_task/linker.dart';

class BoatDetails extends StatelessWidget {
  BoatDetails({super.key});

  //f final VideoPlayerController controller= VideoPlayerController.asset('assets/videos/video.mp4');

  @override
  Widget build(BuildContext context) {
        Get.put(BoatDetailsController());
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          
            //__________________________________________________________________top boat image
            boatDetailCard(
                height * 0.40, width, "assets/images/boat5.jpg", "Boat Name",
                () {
              Get.to(BookingView());
            }, () {}),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      customText("Packages", 18, Color(0xff262323),
                          FontWeight.w500, () {}),
                      customText("View all", 14, Color(0xff494AFF),
                          FontWeight.w500, () {})
                    ],
                  ),
                  const SizedBox(height: 15,),
                  //_____________________________________________________________________Packegs card
                  Stack(
                    alignment: Alignment.bottomCenter,
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Card(
                          elevation: 3,
                          child: SizedBox(
                            height: 90,
                            width: width * .80,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 65, right: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      customText(
                                          "Min. Booking",
                                          16,
                                          Color(0xff262323),
                                          FontWeight.w500,
                                          () {}),
                                      customText(
                                          "With 1 hour of boating",
                                          11,
                                          Color(0xff262323),
                                          FontWeight.w400,
                                          () {}),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      customText(
                                          "\$799.00",
                                          16,
                                          Color(0xff262323),
                                          FontWeight.w500,
                                          () {}),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors
                                              .white, //shape: StadiumBorder(),
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Color(0xff001B48)),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                        ),
                                        child: const Text(
                                          'Select',
                                          style: TextStyle(
                                              color: Color(0xff001B48),
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 120,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/boat5.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15,),

                  //________________________________________________________________overview card
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText("Overview", 16, Color(0xff262323),
                          FontWeight.w500, () {}),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Cras quis nulla commodo, aliquam lectus sed, blandit augue. Cras ullamcorper bibendum bibendum. Duis tincidunt urna non pretium porta. Nam condimentum vitae ligula vel ornare. aliquam lectus sed, blandit augue. Cras ullamcorper.",
                        maxLines: 5,
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          // color:
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //______________________________________________________________________boat video
                      Stack(
                        children: [
                          Container(
                            width: width,
                            height: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                // image: DecorationImage(
                                //     image:
                                //         AssetImage("assets/images/videoImage.PNG"),
                                //     fit: BoxFit.fill)
                                    ),
                                    child: Get.find<BoatDetailsController>().playvideo(),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: IconButton(onPressed: (){
                              Get.find<BoatDetailsController>().startStop();
                            }, icon: Icon(Icons.play_arrow,size: 25,color: Colors.white,)))
                        ],
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      //________________________________________________________________________features card
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customText("Features", 18, Color(0xff262323),
                              FontWeight.w500, () {}),
                          //______________features
                          Row(
                            children: [
                              Icon(
                                Icons.check,
                                color: Color(0xffC9C8C8),
                              ),
                              customText("Lorem ipsum text goes here", 14,
                                  Color(0xff262323), FontWeight.w400, () {}),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check,
                                color: Color(0xffC9C8C8),
                              ),
                              customText("Lorem ipsum text goes here", 14,
                                  Color(0xff262323), FontWeight.w400, () {}),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check,
                                color: Color(0xffC9C8C8),
                              ),
                              customText("Lorem ipsum text goes here", 14,
                                  Color(0xff262323), FontWeight.w400, () {}),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check,
                                color: Color(0xffC9C8C8),
                              ),
                              customText("Lorem ipsum text goes here", 14,
                                  Color(0xff262323), FontWeight.w400, () {}),
                            ],
                          ),
                        ],
                      ),

                      //_____________________________________________________________________________________about card
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customText("About Boat", 18, Color(0xff262323),
                              FontWeight.w500, () {}),
                          Row(
                            children: [
                              Container(
                                height: 120,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/boat5.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.60,
                                child: Text(
                                  "Cras quis nulla commodo, aliquam lectus sed, blandit augue. Cras ullamcorper bibendum bibendum. Duis tincidunt urna non pretium porta. Nam condimentum vitae ligula vel ornare. aliquam lectus sed, blandit augue. Cras ullamcorper.",
                                  maxLines: 8,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,

                                    // color:
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      //___________________________________________________________booking btn
                      SizedBox(
                        height: 15,
                      ),

                      customButton(
                          () {
                            Get.to(BookingView());
                          }, "Continue Booking", 16, Color(0xff001B48), ""),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
