import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/consts/consts.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var userId = FirebaseAuth.instance.currentUser!.uid;
  
  @override
  void onInit() {
    getUsername();
    super.onInit();
  }

  var currentNavIndex = 0.obs;
  var username='';
  var featuredList =[];
  var searchController = TextEditingController();

  getUsername() async {
    var n = await firestore.collection(usersCollection).where('id', isEqualTo: userId).get().then((value){
      if (value.docs.isNotEmpty){
        return value.docs.single['name'];
      }
    });
    username = n;
  }
}
