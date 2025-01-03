import 'package:my_app/Pages/Edit_userpage.dart';
import 'package:my_app/Pages/Home_page.dart';
import 'package:my_app/Pages/Login_page.dart';
import 'package:my_app/Pages/Main_page.dart';
import 'package:my_app/Pages/Nearby.dart';
import 'package:my_app/Pages/Singup_page.dart';


class AppRoutes {
  static final pages = {
    
     "/":(context) => Login_page(),
       "/Signup":(context) => SignupPage(),
       "/home":(context) => Home_page(),
       "/main":(context) =>Main_page(),
       "/Edit_profile":(context) =>Edit_profile(),
       "/nearby":(context) =>NearbyPage(),

  };

  static const login = '/';
  static const Signup = '/Signup';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/Edit_profile';
  static const user = '/user';
  static const nearby = '/nearby';
}