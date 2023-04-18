// import 'package:first_firebase_project/View/Common_Widgets/custom_Text.dart';
// import 'package:flutter/material.dart';
//   TextEditingController upTitleController=TextEditingController();
//   TextEditingController upDesrcipController=TextEditingController();
// customShowDialog(var context,String dailogTitle,VoidCallback onPressed,String title,String descrip)
// {

//   upTitleController.text=title;
//   upDesrcipController.text=descrip;
//   showDialog(
//     context: context, 
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: Text(title),
//         content: Column(
//           children: [
//             TextField(
//               controller: upTitleController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder()
//               ),
//             ),
//             TextField(
//               controller: upDesrcipController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder()
//               ),
//             )
//           ],
//         ),
//         actions: [
//           TextButton(onPressed: onPressed, 
//           child: customText("Update", 15, Colors.black)),
//           TextButton(onPressed: (){Navigator.pop(context);}, 
//           child: customText("cancel", 15, Colors.black))
//         ],
//       );
//     }
//     );
// }