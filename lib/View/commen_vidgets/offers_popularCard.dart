import 'package:boot_app_task/linker.dart';



offersPopularCard( String imagePath,String boatName,String aquaventureWaterpar,double price)
{
  return  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 160,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(imagePath)),
                      ),
                    ),
                    customText(boatName, 16, Color(0xff262323),
                        FontWeight.w500, () {}),
                    customText(aquaventureWaterpar, 11, Color(0xff262323),
                        FontWeight.w400, () {}),
                    customText("\$$price", 14, Color(0xff262323),
                        FontWeight.w500, () {})
                  ],
                );
}