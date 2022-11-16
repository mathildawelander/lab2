
import 'package:flip_card/flip_card_controller.dart';
import 'package:get/get.dart';


class MainController extends GetxController{
FlipCardController flipCardController =FlipCardController();

@override
void onInit(){
  super.onInit();
  flipCardController= FlipCardController();
}

@override
void onReady(){
  super.onReady();
}

@override
void onClose(){}

}