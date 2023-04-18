import 'package:boot_app_task/linker.dart';

bottomAppBarButton(var icon, String text, int activeColor, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          icon,
          color: Get.find<HomeController>().activeColor == activeColor
              ? const Color(0xff001B48)
              : const Color(0xff9FA5C0),
          size: 35,
        ),
        Text(text,
            style: GoogleFonts.poppins(
                fontSize: 12,
                color: Get.find<HomeController>().activeColor == activeColor
                    ? const Color(0xff001B48)
                    : const Color(0xff9FA5C0),
                fontWeight: FontWeight.w500)),
      ],
    ),
  );
}
