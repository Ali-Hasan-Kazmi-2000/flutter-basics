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
            Image(
              image: AssetImage("assets/images/login.png",),
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20,),
            Text("Welcome", style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      labelText: "Enter your username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Enter your password",
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(style: TextButton.styleFrom(), onPressed: (){}, child: Text('Login'))
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
