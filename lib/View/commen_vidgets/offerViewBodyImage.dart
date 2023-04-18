// ignore_for_file: prefer_const_constructors

import 'package:boot_app_task/linker.dart';

offerViewBodyImage(double height, double width, String imagePathe,
    String validation, VoidCallback onPressed,String boatName,String offer,String exper) {
  return Stack(
    children: [
      Container(
        height: height,
        width: width,
        margin: EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.black,
            image: DecorationImage(
              
                image: AssetImage(
                  
                  imagePathe,
                ),
                fit: BoxFit.cover,
                colorFilter:ColorFilter.mode(Colors.black.withOpacity(0.7),
                BlendMode.dstATop)
                )),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            height: 45,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 17, 113, 192),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(validation, 12, Colors.white, FontWeight.w300, () {}),
                  ElevatedButton(
                    onPressed: onPressed,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 57, 64, 99), shape: StadiumBorder()),
                    child: const Text(
                      'View More',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
//_____________________________________________________text over image
      Container(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              customText(boatName, 16, Color(0xffFFFFFF), FontWeight.w500, () { }),
              customText(offer, 23, Color(0xffFFFFFF), FontWeight.w600, () { }),
              customText(exper, 12, Color(0xffFFFFFF), FontWeight.w400, () { })
            ],
          ),
        ),
      )
    ],
  );
}
