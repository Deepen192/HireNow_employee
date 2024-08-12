
import 'package:flutter_application_1/consts/consts.dart';
import 'package:flutter_application_1/views/auth_screen/login_screen.dart';
import 'package:get/get.dart';

import '../../widgets_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creating a method to change screen
  changeScreen(){
    Future.delayed(const Duration(seconds:3),(){
      //using getx
    Get.to(()=>const LoginScreen());
    });
  }
  @override
  void initState() {
    changeScreen();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          children:[
           Align(
            alignment:Alignment.topLeft,child: Image.asset(icSplashBg, width:300)),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            const Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox,
            //our splash screen Ui is completed

          ],
        ),
      ),
    );
  }
}