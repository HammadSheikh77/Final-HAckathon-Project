import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ViewModels/Password_Controller.dart';
import '../../ViewModels/Signup_Controller.dart';
import 'LoginScreen.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.put(SignupController());
    final PasswordController passwordcontroller = Get.put(PasswordController());
    return Scaffold(
      backgroundColor: const Color(0xff0B1225),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Image.asset('assets/images/logo (1).png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Deliver Favourite Food',
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.60,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: const Color(0xff1D102D),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Signup',
                        style: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Form(
                      key: controller.formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, right: 15, left: 15),
                            child: TextFormField(
                              controller: controller.nameController.value,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                hintText: 'Enter Your Name',
                                hintStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                                prefixIcon: const Icon(
                                  Icons.person_2_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              validator: controller.validateName,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, right: 15, left: 15),
                            child: TextFormField(
                              controller: controller.emailController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  )),
                                  hintText: 'Enter Your Email',
                                  hintStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                  prefixIcon: const Icon(
                                    Icons.email_outlined,
                                    color: Colors.white,
                                  )),
                              validator: controller.validateEmail,
                            ),
                          ),
                          Obx(
                            () => Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 15, right: 15),
                              child: TextFormField(
                                controller: controller.passwordController,
                                obscureText:
                                    passwordcontroller.isPasswordHidden.value,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                    ),
                                    hintText: 'Enter Your Password',
                                    hintStyle:
                                        const TextStyle(color: Colors.white),
                                    prefixIcon: const Icon(
                                      Icons.lock_open_outlined,
                                      color: Colors.white,
                                    ),
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          passwordcontroller
                                              .togglePasswordVisibility();
                                        },
                                        icon: Icon(
                                          passwordcontroller
                                                  .isPasswordHidden.value
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: Colors.white,
                                        ))),
                                validator: controller.validatePassword,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5, right: 10),
                          child: const Text(
                            'Forget Password?',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white54,
                            minimumSize: Size(
                              MediaQuery.of(context).size.width * 0.6,
                              MediaQuery.of(context).size.height * 0.07,
                            ),
                          ),
                          onPressed: () {
                            if (controller.formKey.currentState!.validate()) {}
                          },
                          child: const Text(
                            'Signup',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        'Or',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffEC2578)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/google-icon 1.png'),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03),
                          Image.asset('assets/icons/facebook-3 1.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'Don’t have an account?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton(
                    onPressed: () {
                      Get.to(const Loginscreen());
                    },
                    child: const Text(
                      'SIGNUP',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ))),
          ],
        ),
      ),
    );
  }
}
