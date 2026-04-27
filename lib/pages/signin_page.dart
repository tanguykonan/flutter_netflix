import 'package:flutter/material.dart';


class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {

  final _fornkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Center(
          child: Image(
            image: AssetImage("res/assets/icons/logo.png"),
            height: 60,
          ),
        ),
        actions: [
          TextButton(
              onPressed: (){},
              child: Text(
                "Help",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),
              )
          )
        ],
      ),

      // SingleChildScrollView: Nous donne une page scrollab si besoin
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _fornkey,
          child: Column(
            children: [
              const SizedBox(height: 60),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email Adresse",
                  labelStyle: const TextStyle(
                    color: Colors.white
                  ),
                  filled: true,
                  fillColor: Colors.grey[800],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide.none // Sup le contour autour de du champ de saisie
                  )
                ),
                style: const TextStyle(
                  color: Colors.white
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email address';
                  } else if (!value.contains("@")) {
                    return 'Please enter the valid address';
                  } else if (!value.contains(".")) {
                    return 'Please enter the valid address';
                  }
                  else {
                    return null;
                  }
                },
              ),

              const SizedBox(height: 20,),

              TextFormField(
                controller: _passwordController,
                obscureText: _isObscure,
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(
                        color: Colors.white
                    ),
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide.none // Sup le contour autour de du champ de saisie
                    ),
                  suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(
                          _isObscure ? Icons.visibility: Icons.visibility_off,
                        color: Colors.white,
                      ))
                ),
                style: const TextStyle(
                    color: Colors.white
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter password";
                  }
                  else {
                    return null;
                  }
                },
              ),

              const SizedBox(height: 20,),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                      if (_fornkey.currentState!.validate()) {
                        //console.log(_emailController.text);
                        //console.log(_passwordController.text);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)
                      )
                    ),
                    child: const Text(
                        "Sign in",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )
                ),
              ),

              const SizedBox(height: 20,),
              Text(
                "OR", textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),

              const SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)
                        )
                    ),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )
                ),
              ),

              const SizedBox(height: 20,),
              Text(
                "Sign in is protected by Google reCAPTCHA to ensure you are not a bot",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),

            ],
          ),
        ),
      ),
    );
  }
}