import 'package:apprendre_informatique/screens/home/home.dart';
import 'package:flutter/material.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.6,
                  decoration: BoxDecoration(
                    color: Color(0xFF674AEF),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                  ),
                  child: Center(
                   child:Image.asset("assets/bnn.png"),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
                      child:  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/2.666,
                      decoration: BoxDecoration(
                      color: Color(0xFF674AEF),
                    ),
                      ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:  Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666,
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                ),
                child: Column(
                  children: [
                   Text("Apprendre l'informatique partout\n Avec Code Flow",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,
                   fontSize: 18,),),
                    SizedBox(height: 10,),
                    Text("Cliquer sur continuer pour\ncommencer.",textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black45,
                        fontSize: 16,),),
                    SizedBox(height: 25,),
                    Material(
                      color: Color(0xFF674AEF),
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        },
                        child: Container(
                           width: 200,
                          height: 50,
                          padding: EdgeInsets.only(top: 10,),
                          child: Text("Continuer",textAlign:TextAlign.center, style: TextStyle(fontSize: 18,color: Colors.white),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
