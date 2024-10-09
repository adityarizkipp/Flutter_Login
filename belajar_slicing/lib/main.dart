import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: AppContent(),
        )
    );
  }
}

class AppContent extends StatelessWidget {
  const AppContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF6BF6C3),
          Color(0xFF3D79F8),
        ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              //Logo
              Image.asset('images/logo.png',
              width: 177,
              height: 109,
              ),

              const SizedBox(height: 40),

              //Text under the logo
              const Text(
                'Learn Graphic and UI/UX designing in Hindi for free with live projects.',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              //Email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white.withOpacity(0)),
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    fillColor: Colors.white.withOpacity(0.5),
                    filled: true,
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              //Password TextField
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white.withOpacity(0)),
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    fillColor: Colors.white.withOpacity(0.5),
                    filled: true,
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              //Login Button
              ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
              ),

              const SizedBox(height: 15),

              //Forgot Password
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 40),

              //Alt Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //Google
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(
                      'images/google.png',
                      height: 24,
                    ),
                  ),

                  //Facebook
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Image.asset(
                      'images/facebook.png',
                      height: 24,
                    ),
                  ),

                  //Twitter
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(
                      'images/twitter.png',
                      height: 24,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              //Dont have?
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight:FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),     
    );
  }
}