import 'package:flutter/material.dart';
import 'package:mobile_computing/veiw/widgets/custom_textformfeild.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Login Screen App',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Codeplayon',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          const SizedBox(
            height: 30,
          ),
          const CustomFromFeild(
              hint: 'User Name', title: "User Name", icon: Icons.person),
          const CustomFromFeild(
              hint: 'password',
              title: "password",
              icon: Icons.lock_outline_rounded),
          Container(
            margin: const EdgeInsets.only(left: 250, bottom: 30, top: 10),
            child: const InkWell(
              child: Text('forget password ?'),
            ),
          ),
          MaterialButton(
            minWidth: 350,
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(40)),
            color: const Color.fromARGB(255, 4, 122, 107),
            onPressed: () {},
            child: Text(
              "Login",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: const InkWell(
              child: Center(
                child: Text.rich(TextSpan(children: [
                  TextSpan(text: "Don't have an Account?"),
                  TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                          color: Color.fromARGB(255, 4, 122, 107),
                          fontWeight: FontWeight.bold)),
                ])),
              ),
            ),
          )
        ],
      ),
    );
  }
}
