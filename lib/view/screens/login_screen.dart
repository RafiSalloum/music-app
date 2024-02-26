import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:music_app/controller/login_controller.dart';
import 'package:music_app/shared/local/constant/color.dart';
import 'package:music_app/view/widgets/custom_button.dart';
import 'package:music_app/view/widgets/phone_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorApp.backgroundColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: ColorApp.whiteShade,
          ),
          onPressed: () {
            controller.back();
          },
        ),
      ),
      body: Form(
        key: controller.formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Type in your number',
                  style: TextStyle(fontSize: 25.0, color: ColorApp.whiteShade, fontFamily: 'LexendBold'),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Icon(
                        Icons.flag,
                        size: 28.0,
                        color: ColorApp.whiteShade,
                      ),
                    ),
                    Flexible(
                      child: PhoneFormField(
                        suffixText: '+963',
                        inputType: TextInputType.phone,
                        myController: controller.phoneController,
                        valid: (val) {
                          return controller.inputValidation(val);
                        },
                        change: (val) {
                          controller.inputValidation(val);
                        },
                      ),
                    ),
                    GetBuilder<LoginControllerImp>(
                      builder: (controller) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Icon(
                          Icons.check_circle,
                          size: 28.0,
                          color: controller.checkColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                GetBuilder<LoginControllerImp>(
                    builder: (controller) => CustomButton(
                        onPressed: controller.login,
                        color: controller.buttonColor,
                        text: 'Verify my number')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
