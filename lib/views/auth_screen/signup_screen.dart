import 'package:flutter_application_1/views/auth_screen/login_screen.dart';
import 'package:flutter_application_1/widgets_common/custom_textfield.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/consts/consts.dart';
import '../../../controllers/auth_controller.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/our_button.dart';

class SignupScreen extends StatefulWidget {
   const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  var controller = Get.put(AuthController());

  //text controller
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordRetypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
      body:Center(
        child:Column(
          children:[
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Join $appname".text.fontFamily(bold).white.size(20).make(),
            15.heightBox,
            Obx(() =>Column(
                children:[
                 customTextField(hint: nameHint,title: name, controller: nameController,isPass: false),               
                 customTextField(hint: emailHint,title: email,controller: emailController,isPass: false),
                 customTextField(hint: passwordHint,title: password,controller: passwordController,isPass: true),
                 customTextField(hint: passwordHint,title: retypePassword,controller: passwordRetypeController,isPass: true),
                //  Align(
                //   alignment: Alignment.centerRight,
                //   child: TextButton(onPressed: (){}, child: forgetPass.text.make())),
                  5.heightBox,
                  
                  
                 Row(children: [
                  Checkbox(
                    checkColor: Colors.yellow,
                    value: isCheck,
                     onChanged: (newValue){
                      setState(() {
                         isCheck = newValue;
                      });
                     
                     },
                     ),
                     10.widthBox,
                     Expanded(
                       child: RichText(text:const TextSpan(
                        children: [
                          TextSpan(text:"I agree to the", style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                          
                          TextSpan(text:termAndCond, style: TextStyle(
                            fontFamily: regular,
                            color: Colors.orange,
                          )),
                          
                          TextSpan(text:"&", style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                     
                           TextSpan(
                            text:privacyPolicy, 
                            style: TextStyle(
                            fontFamily: regular,
                            color: Colors.orange,
                          ))
                        ],
                       )),
                     ),
                     ],
                 ),
                 controller.isloading.value?const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.yellow),
                   ): ourButton(color: isCheck == true? Colors.orange : lightGrey, 
                   title: signup, 
                   textColor: whiteColor,
                   onPress: () async {
                 if(isCheck !=false){
                  controller.isloading(true);
                  try {
                    await controller.signupMethod(context: context,email: emailController.text,password: passwordController.text).then((value){
                      return controller.storeUserData(
                        email: emailController.text,
                        password: passwordController.text,
                        name: nameController.text);
                    }).then((value){
                      VxToast.show(context, msg: signedin
                      ); 
                      Get.offAll(()=>const LoginScreen ());
                    });
                  } catch (e) {
                    auth.signOut();
                    VxToast.show(context, msg: e.toString());
                    controller.isloading(false);
                  }
                 }
                 },
                 ).box
                  .width(context.screenWidth-50)
                  .make(),
                  10.heightBox,
                  //wrapping into gesture detector of velocity_x
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,      
                  children: [
                    alreadyHaveAccount.text.color(fontGrey).make(),
                    login.text.color(Colors.orange).make().onTap(() {
                      Get.back();
                    }),
                  ],
                 ),
               
                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make(),
            )
          ],
        ),
      ),
    ));
  }
}