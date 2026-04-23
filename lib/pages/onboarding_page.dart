import 'package:flutter/material.dart';
import 'package:flutter_netflix/widgets/onboarding.dart';

/*
On boarding page: une page qui présenteles features d'une app, les abonement possible etc..
En claire des information sur le service.
*/
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});
  @override
  State<OnboardingPage> createState() => _OnboardingPage();
}

class _OnboardingPage extends State<OnboardingPage> {

  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        leading: const Image(image: AssetImage("res/assets/icons/symbol.png")),
        actions: [
          TextButton(
              onPressed: (){},
              child: Text(
                "PRIVACY",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
          TextButton(
              onPressed: (){},
              child: Text(
                "SING IN",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
        ],
      ),
      // stack, superpose ses enfant en couche.
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // PageView : Crée des pages devilants horisontalement
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              Onboarding(title: 'Unlimited movies, TV shows and more', subTitle: 'Watch anywhere. Cancel anytime.', image: 'res/assets/images/ob1.jpg'),
              Onboarding(title: 'There is a plan for every You !', subTitle: 'Plans starting at \$7.99/ month.', image: 'res/assets/images/ob2.jpg'),
              Onboarding(title: 'Cancel online anytime', subTitle: 'Join today, no raison to wait.', image: 'res/assets/images/ob3.jpg'),
            ],
          ),

          //Padding Widget
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 300),
                          height: 10,
                          width: _currentPage == index ? 20 : 10,
                          decoration: BoxDecoration(
                              color: _currentPage == index ? Colors.red : Colors.grey,
                              borderRadius: BorderRadius.circular(5)
                          ),
                        )
                    )
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(),
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)
                        )
                      ),
                      onPressed: (){},
                      child: const Text("Get Started")
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}