import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/routing/routes.dart';

import '../../constants/controllers.dart';
import '../../constants/style.dart';
import '../../helpers/responsiveness.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/layout.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(right: 12)),
                  Image.asset('assets/icons/logo.png'),
                  Expanded(child: Container())
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(right: 12)),
                  CustomText(
                    text: 'Login',
                    color: dark,
                    size: 36,
                    weight: FontWeight.bold,
                  ),
                  Expanded(child: Container())
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(right: 12)),
                  CustomText(
                      text: 'Welcome back to the admin panel',
                      color: lightGrey),
                  Expanded(child: Container())
                ],
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'abc@domain.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: '123',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      CustomText(text: 'Remember me', color: lightGrey)
                    ],
                  ),
                  CustomText(text: 'Forget password', color: active),
                ],
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Get.offAllNamed(rootRoute);
                  //Get.offAll(() => SiteLayout());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: const CustomText(
                    text: 'Login',
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: 'Do not have admin credentials? '),
                    TextSpan(
                        text: 'Request Credentials!',
                        style: TextStyle(color: active))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
