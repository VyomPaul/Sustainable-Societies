import 'package:flutter/material.dart';
import 'package:untitled/sign%20up%20page/sign%20in%20screen.dart';

import 'components/Page title bar.dart';
import 'components/upside.dart';
import 'constants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const Upside(
                  imgUrl: "assets/images/register.png",
                ),
                const PageTitleBar(title: 'Create New Account'),
                Padding(
                  padding: const EdgeInsets.only(top: 320.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Form(
                          child: Column(
                            children: [
                           const TextField(
                            cursorColor: kPrimaryColor,
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.email,
                                  color: kPrimaryColor,
                                ),
                                hintText: "Email",
                                hintStyle: const TextStyle(fontFamily: 'OpenSans'),
                                border: InputBorder.none),
                          ),
                              const TextField(
                                cursorColor: kPrimaryColor,
                                decoration: InputDecoration(
                                    icon: Icon(
                                      Icons.person,
                                      color: kPrimaryColor,
                                    ),
                                    hintText: "Name",
                                    hintStyle: const TextStyle(fontFamily: 'OpenSans'),
                                    border: InputBorder.none),
                              ),
                              const TextField(
                                obscureText: true,
                                cursorColor: kPrimaryColor,
                                decoration: InputDecoration(
                                    icon: Icon(
                                      Icons.vpn_key,
                                      color: kPrimaryColor,
                                    ),
                                    hintText: "Password",
                                    hintStyle: const TextStyle(fontFamily: 'OpenSans'),
                                    border: InputBorder.none),
                              ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            width: size.width * 0.8,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(29),
                              child: ElevatedButton(
                                child: Text(
                                  'REGISTER',
                                  style: TextStyle(color: Colors.white,fontSize: 17),
                                ),
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                    primary: kPrimaryColor,
                                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                                    textStyle: TextStyle(
                                        letterSpacing: 2,
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'OpenSans'
                                    )
                                ),
                              ),
                            ),
                          ),
                              const SizedBox(
                                height: 10,
                              ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: const TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => const LoginScreen())
                                  );
                                },
                                child: Text(
                                  "Login here",
                                  style: const TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Opensans'),
                                ),
                              )

                            ],
                          ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}