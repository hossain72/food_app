import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        padding: EdgeInsets.only(left: height / 50, right: height / 50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height / 15,
              ),
              Image.asset('assets/images/registration_logo.png'),
              SizedBox(
                height: height / 50,
              ),
              Text(
                'Registration',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height / 50,
              ),
              Text(
                'To get started, please registration first',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Color.fromRGBO(55, 71, 79, 0.72),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height / 50,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controller.mobileNumberController,
                        keyboardType: TextInputType.emailAddress,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(
                              new RegExp(r"\s\b|\b\s")),
                          FilteringTextInputFormatter.deny(new RegExp('[ ]')),
                        ],
                        validator: (value) {},
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone_outlined,
                              color: Color.fromRGBO(55, 71, 79, 1),
                            ),
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Color.fromRGBO(55, 71, 79, 1),
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                            fillColor: Color.fromRGBO(240, 241, 242, 1),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(6)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(6),
                            )),
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      Obx(() => TextFormField(
                        controller: controller.passwordController,
                        keyboardType: TextInputType.text,
                        obscureText: controller.hidePassword.value,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(
                              new RegExp(r"\s\b|\b\s")),
                          FilteringTextInputFormatter.deny(
                              new RegExp('[ ]')),
                        ],
                        validator: (value) {},
                        decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: height / 50),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: IconButton(
                                  icon: Icon(
                                    controller.hidePassword.value
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Color.fromRGBO(54, 50, 50, 0.5),
                                  ),
                                  onPressed: () {
                                    controller.passwordHide();
                                  }),
                            ),
                            prefixIcon: Icon(Icons.lock_outline,
                                color: Color.fromRGBO(55, 71, 79, 1)),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Color.fromRGBO(55, 71, 79, 1),
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                            fillColor: Color.fromRGBO(240, 241, 242, 1),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(6)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(6),
                            )),
                      )),
                      SizedBox(
                        height: height / 50,
                      ),
                      Obx(() => TextFormField(
                        controller: controller.confirmPasswordController,
                        keyboardType: TextInputType.text,
                        obscureText: controller.hideConfirmPassword.value,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(
                              new RegExp(r"\s\b|\b\s")),
                          FilteringTextInputFormatter.deny(
                              new RegExp('[ ]')),
                        ],
                        validator: (value) {},
                        decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: height / 50),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: IconButton(
                                  icon: Icon(
                                    controller.hideConfirmPassword.value
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Color.fromRGBO(54, 50, 50, 0.5),
                                  ),
                                  onPressed: () {
                                    controller.confirmPasswordHide();
                                  }),
                            ),
                            prefixIcon: Icon(Icons.lock_outline,
                                color: Color.fromRGBO(55, 71, 79, 1)),
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Color.fromRGBO(55, 71, 79, 1),
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                            fillColor: Color.fromRGBO(240, 241, 242, 1),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(6)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(6),
                            )),
                      )),
                    ],
                  )),
              SizedBox(
                height: height / 50,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed('/registration');
                },
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(6)),
                  child: ListTile(
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Registration',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height / 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
