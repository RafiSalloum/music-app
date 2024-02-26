import 'package:get/get.dart';
import 'package:music_app/shared/local/constant/routes.dart';
import 'package:music_app/view/screens/home_screen.dart';
import 'package:music_app/view/screens/login_screen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: '/', page: () => const HomeScreen()),
  GetPage(name: AppRoute.login, page: () => const LoginScreen()),
];