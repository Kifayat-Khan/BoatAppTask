import 'package:boot_app_task/linker.dart';

homeBodyImage(double height, double width, String imagePath, String boatName,
    String availableBySeat, VoidCallback onPressed, VoidCallback onTap) {
  return Stack(
    children: [
      Container(
        height: height,
        width: width,
        margin: EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.blueAccent,
            image: DecorationImage(
                image: AssetImage(
                  imagePath,
                ),
                fit: BoxFit.cover)),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            customText(boatName, 16, Color(0xff262323),
                                FontWeight.w500, () {}),
                            customText("(${availableBySeat})", 8,
                                Color(0xff262323), FontWeight.w400, () {})
                          ],
                        ),
                        customText("Sea View Premium Lifestyle", 11,
                            Color(0xff262323), FontWeight.w500, () {}),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xff494AFF),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xff494AFF),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xff494AFF),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(225, 240, 240, 245),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(225, 240, 240, 245),
                            ),
                            customText("Rating", 11, Color(0xff262323),
                                FontWeight.w400, () {})
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 25,
                          child: ElevatedButton(
                            onPressed: onPressed,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff001B48),
                              // padding: EdgeInsets.all(10),

                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text(
                              'Book Now',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                        Icon(Icons.person),
                      ],
                    )
                  ],
                )),
          ),
        ]),
      ),
      Container(
          height: height,
          width: width,
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: CircleAvatar(
                backgroundColor: Color(0xff979797),
                child: InkWell(
                  onTap: onTap,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                )),
          ))
    ],
  );
}
