import 'package:boot_app_task/linker.dart';
import 'package:flutter/services.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailPhoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return WillPopScope(
       onWillPop: ()async{
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
       // resizeToAvoidBottomInset : false,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15, top: 30),
            child: SingleChildScrollView(
              child: Column(
             
                children: [
                  Center(
                    child: customText("Welcome Back!", 25,
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
                   Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          customText("Forgot password?", 15,
                              const Color(0xff2E3E5C), FontWeight.w500,(){})
                        ],
                      ),
                  const SizedBox(
                    height: 40,
                  ),
                  //____________________________________________________________________login button
                  customButton(
                      () {
                        Get.to(const HomeView());
                      }, "Login", 20, const Color(0xff001B48), ""),
                       const SizedBox(
                    height: 27,
                  ),
                  customText("or continue with", 18, const Color(0xff9FA5C0),
                      FontWeight.w500,(){}),
                       const SizedBox(
                    height: 27,
                  ),
                    //__________________________________________________________________google sign in btn
                  customButton(() {}, "Google", 18, const Color(0xffFF5842),
                      "assets/images/google.png"),
                       const SizedBox(
                    height: 27,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    
                      customText("Dont't have any account?", 15,
                          const Color(0xff2E3E5C), FontWeight.w500,(){
                            
                          }),
                      const SizedBox(
                        width: 4,
                      ),
                    //______________________________________________________________________sign up btn
                      customText("Sign Up", 15, const Color(0xff001B48),
                          FontWeight.w700,(){
                            Get.to(const RegistrationView());
                          })
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
