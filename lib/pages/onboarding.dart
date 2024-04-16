import 'package:app_shop_food/pages/signup.dart';
import 'package:app_shop_food/widgets/content_model.dart';
import 'package:app_shop_food/widgets/widget_support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[i].image,
                          height: 450,
                          width: MediaQuery.of(context).size.width ,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          contents[i].title,
                          style: AppWidget.semiBooldTextFeildStyle(),
                        ),
                         const SizedBox(height: 20,),
                        Text(
                          contents[i].description,
                          style: AppWidget.LightTextFeildStyle(),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    contents.length, (index) => buildDot(index, context))),
          ),
          GestureDetector(
            onTap: () {
              if (currentIndex == contents.length - 1) {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              }
              _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20)
              ),
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.all(40),
              child: Center(
                child: Text(
                  currentIndex == contents.length - 1 ? 'Start' :'Next',
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 18 : 7,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.black38),
    );
  }
}
