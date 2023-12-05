import 'package:apprendre_informatique/widget/descriptionSection.dart';
import 'package:apprendre_informatique/widget/videoSection.dart';
import 'package:flutter/material.dart';

class Formation extends StatefulWidget {
 final Map train;
const Formation({
    required this.train
  });
  @override
  State<Formation> createState() => _FormationState();
}

class _FormationState extends State<Formation> {
  bool isVideoSection=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.white,
           foregroundColor: Colors.black,
           elevation: 0,
           centerTitle: true,
           title: Text(widget.train['name'],style: TextStyle(fontSize:22,fontWeight: FontWeight.bold),),
           actions: [
            Padding(padding: EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: (){

              },
             icon: Icon(Icons.notifications,color: Color(0xFF674AEF),),
            ),
            ),
           ],
         ),
         body: Padding(
           padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
           child: ListView(
             children: [
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: 200,
                 decoration: BoxDecoration(
                   color: Color(0xFFF5F3FF),
                   borderRadius: BorderRadius.circular(20),
                   image: DecorationImage(
                     image: AssetImage("assets/${widget.train['image']}.png"),
                   ),
                 ),
                 child: Center(
                   child: Padding(
                     padding: EdgeInsets.all(10),
                     child:Container(
                       width: 50,
                       height: 100,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.white,
                       ),
                       child: Icon(Icons.play_arrow,color:Color(0xFF674AEF),size: 32,),
                     ),
                   ),
                 ),
               ),
               SizedBox(height: 15,),
               Text("${widget.train['name']} Formation complète",style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
               ),),
               SizedBox(height: 5,),
               Text("Par CodeFlow et Udemy",style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: 18),),
               SizedBox(height: 5,),
               Container(
                 padding: EdgeInsets.symmetric(vertical: 15,horizontal:10),
                 decoration: BoxDecoration(
                 color: Color(0xFFF5F3FF),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Material(
                     color: isVideoSection ? Color(0xFF674AEF).withOpacity(0.6):Color(0xFF674AEF),
                       borderRadius: BorderRadius.circular(20),
                       child: InkWell(
                        onTap: (){
                        setState(() {
                          isVideoSection=false;
                        });
                        },
                         child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                           child: Text("Vidéos",style: TextStyle(color: Colors.white,
                           fontSize: 16,
                             fontWeight: FontWeight.bold,
                           ),
                           ),
                         ),
                       ),
                     ),
                     Material(
                       color:isVideoSection ? Color(0xFF674AEF) :Color(0xFF674AEF).withOpacity(0.6),
                       borderRadius: BorderRadius.circular(20),
                       child: InkWell(
                         onTap: (){
                           setState(() {
                             isVideoSection=true;
                           });
                         },
                         child: Container(
                           padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                           child: Text("Description",style: TextStyle(color: Colors.white,
                             fontSize: 16,
                             fontWeight: FontWeight.bold,
                           ),
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
               SizedBox(height: 10,),
               isVideoSection ? DescriptionSection(trainDescription: widget.train['description'],):
               Column(children: [
                for (var item in widget.train['video'])
                VideoSection(videoTrain:  item)
               ],)
                 
             ],
           ),
         ),
    );
  }
}
