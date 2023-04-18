// ignore: file_names
import 'package:boot_app_task/linker.dart';
customText(String text,double fntSize, Color txtClr,FontWeight fntwight, VoidCallback onTap){
  return InkWell(
    onTap: onTap,
    child: Text(
        text,
        style: GoogleFonts.poppins(
              fontSize: fntSize,
              color: txtClr,
              fontWeight: fntwight
        )
    ),
  );
}