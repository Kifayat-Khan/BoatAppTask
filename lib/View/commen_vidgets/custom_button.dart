import 'package:boot_app_task/linker.dart';

customButton(VoidCallback onTap,String btnText, double fntsize,Color bakClr,String imagePath)
{
  
  return GestureDetector(
  onTap: onTap,
  child: Container(
    
    height: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: bakClr,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if(imagePath!="")
        Image.asset(imagePath,width: 15,height: 15,),
        const  SizedBox(width: 5,),
        Text(btnText,
        style: GoogleFonts.poppins(fontSize: fntsize, fontWeight: FontWeight.w700,color: Color(0xffFFFFFF)),),
      ],
    )
    
    ),
  );

}