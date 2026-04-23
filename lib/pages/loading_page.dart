import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_netflix/pages/onboarding_page.dart';
import 'package:lottie/lottie.dart';

class MyLoadingPage extends StatefulWidget {
  const MyLoadingPage({super.key});

  @override
  State<MyLoadingPage> createState() => _MyLoadingPageState();
}

class _MyLoadingPageState extends State<MyLoadingPage> {


  // Methode qui execute notre loadanimation quant la page est initialisé
  @override
  void initState(){
    super.initState();
    loadAnimation();
  }

  // (Methode 2) Fonction de timer qui execute la fonction (Methode1) après un délais
  Future<Timer> loadAnimation() async {
    return Timer(
      const Duration(seconds: 5),
      onLoading
    );
  }

  // Fonction qui rédirige l'utilisateur à la page d'accueil (quant l'animation est finis)
  /*void onLoading() {
    Navigator.pushNamed(
        context,
        '/home'
    );
  }*/
  // Avec pushNamed, la page home obtient un icon button de retour par défaut

  void onLoading() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const OnboardingPage())
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset(
            "res/assets/lotties/netflix.json",
          repeat: false // Ne pas répéter l'animation
        ),
      ),
    );
  }
}