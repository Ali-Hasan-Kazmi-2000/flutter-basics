import 'package:e_commerce_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Image(
              image: AssetImage("assets/images/login.png",),
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20,),
            const Text("Welcome", style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Username",
                      labelText: "Enter username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      labelText: "Enter password",
                    ),
                  ),
                  const SizedBox(height: 40,),
                  ElevatedButton(style: TextButton.styleFrom(
                    minimumSize: const Size(120, 40),
                  ), onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                  }, child: const Text('Login', style: TextStyle(
                    fontSize: 20,
                  ),),)
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
