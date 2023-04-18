// ignore_for_file: prefer_const_constructors

import 'package:boot_app_task/linker.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 30),
        child: Column(
          //___________________________________________________________main column
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_sharp,
                          size: 30,
                          color: Color(0xff262323),
                        )),
                    customText("Offers & Deals", 23, Colors.black,
                        FontWeight.w600, () {})
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //______________________________________________________________________horezonatl scrolling boat 1

                  offerViewBodyImage(
                      height * 0.25,
                      width * 0.80,
                      "assets/images/boat1.jpg",
                      "Valid till June 2023",
                      () {
                        Get.to(BoatDetails());
                      },
                      "Loren ipsum",
                      "Flat 12% Off",
                      "Boating Experience"),
                  offerViewBodyImage(
                      height * 0.25,
                      width * 0.80,
                      "assets/images/boat2.jpg",
                      "Valid till June 2023",
                      () {
                        Get.to(BoatDetails());
                      },
                      "Loren ipsum",
                      "Flat 12% Off",
                      "Boating Experience"),
                  offerViewBodyImage(
                      height * 0.25,
                      width * 0.80,
                      "assets/images/boat3.jpg",
                      "Valid till June 2023",
                      () {
                        Get.to(BoatDetails());
                      },
                      "Loren ipsum",
                      "Flat 12% Off",
                      "Boating Experience"),
                  offerViewBodyImage(
                      height * 0.25,
                      width * 0.80,
                      "assets/images/boat4.jpg",
                      "Valid till June 2023",
                      () {},
                      "Loren ipsum",
                      "Flat 12% Off",
                      "Boating Experience"),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText(
                    "Usual Trips", 18, Colors.black, FontWeight.w500, () {}),
                customText(
                    "View all", 14, Color(0xff494AFF), FontWeight.w500, () {})
              ],
            ),
            //__________________________________________________________________usual trip cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                offersPopularCard("assets/images/boat1.jpg", "Boat Name",
                    "Nam porttitor blandi.", 799.00),
                offersPopularCard("assets/images/boat3.jpg", "Boat Name",
                    "Nam porttitor blandi.", 799.00),
              ],
            ),
            //___________________________________________________________________________________Favorities line
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText(
                    "Favorites", 18, Color(0xff262323), FontWeight.w500, () {}),
                customText(
                    "View all", 14, Color(0xff494AFF), FontWeight.w500, () {})
              ],
            ),
            //________________________________________________________________________________favorites cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                offersPopularCard("assets/images/boat5.jpg", "Boat Name",
                    "Nam porttitor blandi.", 799.00),
                offersPopularCard("assets/images/boat6.jpg", "Boat Name",
                    "Nam porttitor blandi.", 799.00),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
