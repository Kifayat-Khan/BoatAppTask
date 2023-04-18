import 'package:boot_app_task/linker.dart';


searchSuggestionBtn(String text,VoidCallback onPressed)
{
  return ElevatedButton(
                            onPressed: onPressed,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffF4F5F7),
                                shape: StadiumBorder()),
                            child: Text(text,style: TextStyle(color: Color(0xff3E5481),fontSize: 15),),
                          );
}