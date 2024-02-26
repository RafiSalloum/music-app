import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:music_app/shared/local/constant/color.dart';
import 'package:music_app/shared/local/constant/images-assets.dart';
import 'package:music_app/shared/local/constant/routes.dart';
import 'package:music_app/view/widgets/custom_button.dart';
import 'package:music_app/view/widgets/custom_home_screen_closing.dart';
import 'package:music_app/view/widgets/custom_home_screen_message.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // forceMaterialTransparency: true,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageAsset.background),
                      fit: BoxFit.fill)),
            ),
            Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black45),
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Gap(100),
                      const Message(),
                      const Gap(30),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          children: [
                            CustomButton(
                                color: ColorApp.activeButton,
                                text: 'Create an account',
                                onPressed: () {}
                            ),
                            CustomButton(
                              color: ColorApp.whiteShade,
                              text: 'Log in',
                              onPressed: () {
                                Get.toNamed(AppRoute.login);
                              }
                            ),
                          ],
                        ),
                      ),
                      const Closing(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
