// ignore_for_file: prefer_const_constructors

import 'package:boot_app_task/View/offers_view.dart';
import 'package:boot_app_task/linker.dart';

class RegistrationView extends StatelessWidget {
  const RegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailPhoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    return Scaffold(
     // resizeToAvoidBottomInset : false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15, top: 30),
          child: SingleChildScrollView(
            child: Column(
           
              children: [
                Center(
                  child: customText("Registration", 25,
                      const Color(0xff2E3E5C), FontWeight.w700,(){}),
                ),
                 const SizedBox(
                  height: 23,
                ),
                customText("Please enter your account here", 15,
                    const Color(0xff9FA5C0), FontWeight.w500,(){}),
                     const SizedBox(
                  height: 23,
                ),
                customTextFormField(
                    emailPhoneController,
                    "Email or Phone Number",
                    false,
                    Icons.email,null),
                     const SizedBox(
                  height: 18,
                ),
                customTextFormField(passwordController, "Password", true,
                   Icons.lock, Icons.visibility),
                    const SizedBox(
                  height: 18,
                ),
                 customTextFormField(confirmPasswordController, "Confirm Password", true,
                   Icons.lock, Icons.visibility),
                    const SizedBox(
                  height: 18,
                ),
                
                customButton(
                  //_______________________________________________________________________________registor btn
                    () {Get.to(HomeView());}, "Registor", 20, const Color(0xff001B48), ""),
                     const SizedBox(
                  height: 27,
                ),
                customText("or continue with", 18, const Color(0xff9FA5C0),
                    FontWeight.w500,(){}),
                     const SizedBox(
                  height: 27,
                ),
                  
                customButton(() {}, "Google", 18, const Color(0xffFF5842),
                    "assets/images/google.png"),
                     const SizedBox(
                  height: 27,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customText("Already have an accoun?", 15,
                        const Color(0xff2E3E5C), FontWeight.w500,(){}),
                    const SizedBox(
                      width: 4,
                    ),
                    customText("Login", 15, const Color(0xff001B48),
                        FontWeight.w700,(){
                          Get.to(SignInView());
                        })
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
