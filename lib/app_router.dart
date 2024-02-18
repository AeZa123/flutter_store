import 'package:flutter_store/screens/forgotpassword/forgot_Password_Screen.dart';
import 'package:flutter_store/screens/login/login_screen.dart';
import 'package:flutter_store/screens/welcome/welcome_screen.dart';
import 'package:flutter_store/screens/register/register_screen.dart';

class AppRouter {
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String register = 'register';
  static const String forgotPassword = 'forgotPassword';

  static get routes => {
        welcome: (context) => WelcomeScreen(),
        login: (context) => LoginScreen(),
        register: (context) => RegisterScreen(),
        forgotPassword: (context) => ForgotPasswordScreen(),
      };
}
