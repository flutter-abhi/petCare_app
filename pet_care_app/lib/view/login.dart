import 'package:flutter/material.dart';
import 'package:pet_care_app/view/list_of_pages.dart';
import 'package:pet_care_app/widgets/textfild.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(23.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Login",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(245, 146, 69, 1)),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset("assets/login/Brandmark_Logo.png"),
              const SizedBox(
                height: 10,
              ),
              myTextFild(hintText: "petGaurdian@gmailcom", helperText: "Email"),
              const SizedBox(
                height: 10,
              ),
              myTextFild(
                  hintText: "password",
                  helperText: "Lable",
                  sufixIcon: const Icon(Icons.visibility_off),
                  isPass: true),
              const Text(
                "Forgot Password ? Click Here",
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const ListOfPages();
                  }));
                },
                child: Container(
                  height: 35,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(245, 146, 69, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Color.fromRGBO(245, 146, 69, 1),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 35,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(245, 146, 69, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "LOGIN WITH EMAIL",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                height: 35,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(245, 146, 69, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "LOGIN WITH FACEBOOK",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              const Text("By continue you agree to our "),
              const Text("Terms & Privacy Policy "),
            ],
          ),
        ),
      ),
    );
  }
}
