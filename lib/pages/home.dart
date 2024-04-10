import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false,pizza = false,salat= false,burger= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(" Chào mừng bạn ",
                    style: AppWidget.boldTextFeildStyle(),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:const  Icon(Icons.shopping_cart,color: Colors.white,),
                )
              ],
            ),
             const SizedBox(
              height: 30,
            ),
            Text(
              "Delicious Food",
              style: AppWidget.HeadlineTextFeildStyle(),
            ),
            Text(
              "Discover and Get Great Food",
              style: AppWidget.LightTextFeildStyle(),
            ),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              GestureDetector(
                onTap: (){
                  icecream = true;
                  pizza = false;
                  burger = false;
                  salat = false;
                  setState(() {

                  });
                },
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: icecream ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    padding:  EdgeInsets.all(8),
                    child: Image.asset("assets/images/ice-cream.png",
                      height: 40,
                      width: 40,
                      fit:BoxFit.contain,
                      color: icecream ? Colors.white: Colors.black,
                    ),

                  ),
                ),
              ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset("assets/images/pizza.png",
                      height: 40,
                      width: 40,
                      fit:BoxFit.contain,
                    ),

                  ),
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset("assets/images/salad.png",
                      height: 40,
                      width: 40,
                      fit:BoxFit.contain,
                    ),

                  ),
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset("assets/images/burger.png",
                      height: 40,
                      width: 40,
                      fit:BoxFit.contain,
                    ),

                  ),
                )
            ],
            )
          ],
        ),
      ),
    );
  }
}
