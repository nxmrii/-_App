import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zra_app/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool fruit=false, milk=false, veg=false, jam=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 10.0),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   "Hello Noor," ,
                   style:AppWidget.boldTextFeildStyle()
                 ),
                 Container(
                   padding: EdgeInsets.all(3),
                   decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(8)),
                   child: Icon(Icons.shopping_cart, color: Colors.white),
                 )
               ],
             ),
              SizedBox(height: 20),
              Text(
                  "The best crops!" ,
                  style:AppWidget.HeadlineTextFeildStyle()
              ),
              Text(
                  "Get Your Fresh Products from The Farm" ,
                  style:AppWidget.LightTextFeildStyle()),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                GestureDetector(
                  onTap: (){
                    fruit=true;
                    milk=false;
                    veg=false;
                    jam=false;
                    setState(() {

                    });
                  },
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: fruit?Colors.green: Colors.white, borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(8),
                      child: Image.asset("images/fruiti.png", height: 50, width: 50, fit: BoxFit.cover,color: fruit? Colors.white: Colors.green,),
                    ),
                  ),
                ),
                  GestureDetector(
                    onTap: (){
                      fruit=false;
                      milk=true;
                      veg=false;
                      jam=false;
                      setState(() {

                      });
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(color: milk?Colors.green: Colors.white, borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(8),
                        child: Image.asset("images/dairyproducts.png", height: 54, width: 54, fit: BoxFit.cover,color: milk? Colors.white: Colors.green,),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      fruit=false;
                      milk=false;
                      veg=true;
                      jam=false;
                      setState(() {

                      });
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(color: veg?Colors.green: Colors.white, borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(8),
                        child: Image.asset("images/vegt.png", height: 54, width: 54, fit: BoxFit.cover,color: veg? Colors.white: Colors.green,),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      fruit=false;
                      milk=false;
                      veg=false;
                      jam=true;
                      setState(() {

                      });
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(color: jam?Colors.green: Colors.white, borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(8),
                        child: Image.asset("images/jamm.png", height: 54, width: 54, fit: BoxFit.cover,color: jam? Colors.white: Colors.green,),
                      ),
                    ),
                  ),
              ],)
            ],
          ),
      ),
    );
  }
}

