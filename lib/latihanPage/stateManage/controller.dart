import 'package:get/get.dart';

class stateController {
  
  var swit = false.obs;

  click(bool index){

    swit.value = index;

  }

}