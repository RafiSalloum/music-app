import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/shared/local/constant/color.dart';

abstract class LoginController extends GetxController {
  login();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController phoneController;
  Color buttonColor = ColorApp.inactiveButton;
  Color checkColor = ColorApp.inactiveButton;

  inputValidation(String? value) {
    if(value!.length < 9) {
      buttonColor = ColorApp.inactiveButton;
      checkColor = ColorApp.inactiveButton;
      update();
      return 'Please enter valid phone number';
    }
    else {
      buttonColor = ColorApp.activeButton;
      checkColor = ColorApp.activeButton;
      update();
    }
  }

  back() {
    Get.back();
  }

  @override
  login() {
    FormState? formData = formKey.currentState;
    if(formData!.validate()){
      return 'Valid';
    } else {
      return 'Not Valid';
    }
  }

  @override
  void onInit() {
    phoneController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }
}