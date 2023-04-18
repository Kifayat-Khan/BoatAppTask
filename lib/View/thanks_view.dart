// ignore_for_file: prefer_const_constructors

import 'package:boot_app_task/linker.dart';

class ThanksView extends StatelessWidget {
  const ThanksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Get.to(HomeView());
        }, 
        icon: const Icon(Icons.close,color: Color(0xff262323),)),
      ),
      //_____________________________________________________________body
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: 25,),
                customText("Thank You!", 23, Color(0xff262323), FontWeight.w600, () { }),
                customText("Dear, George your booking is confirmed", 14, Color(0xff262323), FontWeight.w500, () { }),
                SizedBox(height: 25,),
                Image.asset("assets/images/thnks.PNG"),
                SizedBox(height: 25,),
                customText("Just sit back", 16, Color(0xff262323), FontWeight.w500, () { }),
                 SizedBox(height: 25,),
                 Text(
                      "No need to call us to reconfirm this booking.Your details are attached with the email sent to your email-id.",
                      maxLines: 5,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        // color:
                      ),
                    ),
                    SizedBox(height: 60,),
                    customButton(() { 
                     // Get.to(BookingView());
                    }, "View Details", 16, Color(0xff001B48), "")
              
      
              ],
            ),
            ),
        ),
      ),
        
    );
  }
}