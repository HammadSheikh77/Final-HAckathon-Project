import 'package:get/get.dart';

class PasswordController extends GetxController {
  var isPasswordHidden = true.obs;
  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

   var confirmPassword = true.obs;
  void toggleconfirmPasswordVisibility() {
    confirmPassword.value = !confirmPassword.value;
  }
}
