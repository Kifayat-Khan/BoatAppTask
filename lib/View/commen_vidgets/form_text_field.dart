import 'package:boot_app_task/linker.dart';

customTextFormField(
  TextEditingController cntr,
   String hint,
    bool secure, 
    var prefixicon,
    var sufixicon
    )
{
  return SizedBox(
    height: 60,
    
    child: TextFormField(
      autocorrect: true,
      
    textAlignVertical: TextAlignVertical.center,
     
        controller: cntr,
        decoration: InputDecoration(
          hintText: hint,
          
          prefixIcon: Container(padding: const EdgeInsets.only(bottom: 3), child: Icon(prefixicon)),
          suffixIcon: Container(padding: const EdgeInsets.only(bottom: 3), child: Icon(sufixicon)),
         // prefix: prefix,
          //________________________________________________boarder of text field
           enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
        ),
        //__________________________________________________________error boaerder
        errorBorder: OutlineInputBorder( 
      borderSide: const BorderSide(
          width: 1, color: Colors.redAccent,
          ),
          borderRadius: BorderRadius.circular(16),          
    ),
    //_______________________________________________________error focused border
    focusedErrorBorder: OutlineInputBorder( 
      borderSide: const BorderSide(
          width: 1, color: Colors.redAccent,
          ),
          borderRadius: BorderRadius.circular(16),          
    ),
        //__________________________________________________________focusedboreder
    focusedBorder: OutlineInputBorder( 
      borderSide: const BorderSide(
          width: 1, color: Color(0xff001B48),
          ),
          borderRadius: BorderRadius.circular(16),),
    
    // helperText: hlprText,
    border: InputBorder.none
    

  ),
   obscureText: secure,
  keyboardType: TextInputType.text,
    // The validator receives the text that the user has entered.
  validator: (value) {
    if (value!.isEmpty) {
      return 'Please enter $hint';
    }
    return null;
  },
  
  )
  );
}