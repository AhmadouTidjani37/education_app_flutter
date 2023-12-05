import 'package:apprendre_informatique/screens/cours_screen/cours_screen.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Trainings=[
    {
      'name':'Flutter',
      'image':'Flutter',
      'description':'Formation complète sur Flutter offerte gratuitement par CodeFlow.',
      'video':[
        'assets/video/python/0.mp4',
        'assets/video/python/1.mp4',
      ]
    },
    {
      'name':'Python',
      'image':'Python',
      'description':'Complète.',
      'video':[
            'assets/video/python/0.mp4',
            'assets/video/python/1.mp4',
            'assets/video/python/2.mp4',
            'assets/video/python/3.mp4',
            'assets/video/python/4.mp4',
            'assets/video/python/5.mp4',
            'assets/video/python/6.mp4',
            'assets/video/python/7.mp4',
            'assets/video/python/8.mp4',
            'assets/video/python/9.mp4',
            'assets/video/python/10.mp4',
      ],
    }
  ];

  List CartName=[
    "Maintenance",
    "Burreautique",
    "Infographie",
    "Codage",
    "Réseau",
    "Hacking",
  ];
  List<Color> Couleurs=[
    Color(0xFFFF8008),
    Color(0xFFF00777),
    Color(0xFF009999),
    Color(0xFFF66666),
    Color(0xFFFFF000),
    Color(0xFF104679),
  ];

  List<Icon> Icones=[
    Icon(Icons.settings,color: Colors.white,size: 30,),
    Icon(Icons.desktop_mac_sharp,color: Colors.white,size: 30,),
    Icon(Icons.camera_alt_outlined,color: Colors.white,size: 30,),
    Icon(Icons.code,color: Colors.white,size: 30,),
    Icon(Icons.network_cell_outlined,color: Colors.white,size: 30,),
    Icon(Icons.face,color: Colors.white,size: 30,),
  ];

  List ListCours=[
    "Flutter",
    "Python",
    "C#",
    "C++",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
       children: [
         Container(
           padding: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 10),
           decoration: BoxDecoration(
             color: Color(0xFF674AEF),
             borderRadius: BorderRadius.only(bottomRight:Radius.circular(20),
             bottomLeft: Radius.circular(20)),
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed:(){

                  }, icon:Icon(Icons.dashboard,color: Colors.white,)),
                  IconButton(
                      onPressed:(){

                      }, icon:Icon(Icons.notifications,color: Colors.white,)),
                ],
              ),
               SizedBox(height: 20,),
               Padding(
                   padding: EdgeInsets.only(left:10,bottom: 15),
                 child: Text("Bienvenue sur Code Flow !",style: TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                 ),),
               ),
               Container(
                margin: EdgeInsets.only(top: 5,bottom: 20,),
                 width: MediaQuery.of(context).size.width,
                 height: 55,
                 alignment: Alignment.center,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child: TextFormField(
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: "Recherche ici...",
                     prefixIcon: Icon(Icons.search,color: Colors.black45,),
                   ),
                 ),
               ),
             ],
           ),
         ),
         Padding(
           padding: EdgeInsets.only(top: 20,left: 15,right: 15),
           child: Column(
             children: [
               Text("Nos Services",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
               SizedBox(height: 15,),
               GridView.builder(
                   itemCount: CartName.length,
                   shrinkWrap:true,
                   physics: NeverScrollableScrollPhysics(),
                   gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 3,
                     childAspectRatio: 1.1,
                   ),
                 itemBuilder: (context, index){
                     return Column(
                       children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Couleurs[index],
                            shape: BoxShape.circle,
                          ),
                          child:Center(
                            child: Icones[index],
                          ),
                        ),
                         SizedBox(height: 10,),
                         Text(CartName[index],style: TextStyle(fontWeight:FontWeight.bold,
                         color: Colors.black.withOpacity(.6)),),
                       ],
                     );
                 }
               ),
               SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Nos Formations",style: TextStyle(fontSize: 18,color:Colors.black,
                   fontWeight: FontWeight.bold),),
                   Text("Voir tout",style: TextStyle(fontSize: 16,color: Color(0xFF674AEF),
                       fontWeight: FontWeight.bold),),
                 ],
               ),
               SizedBox(height: 10,),
               GridView.builder(
                 itemCount: Trainings.length,
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   childAspectRatio: (MediaQuery.of(context).size.height - 50 -25)
                       /(4*240),
                   mainAxisSpacing: 10,
                   crossAxisSpacing: 10,
                 ),
                  itemBuilder: (context, index){
                   return InkWell(
                     onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>Formation(train:Trainings[index])));
                     },
                     child: Container(

                       padding: EdgeInsets.symmetric(horizontal: 10,vertical:20 ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Color(0xFFF5F3FF),
                       ),
                       child: Column(
                         children: [
                          Padding(
                              padding:EdgeInsets.all(20),
                             child: Image.asset("assets/${Trainings[index]['image']}.png",width: 100,height: 80,),
                          ),
                           SizedBox(height: 2,),
                           Text(ListCours[index],style: TextStyle(fontSize: 16),),
                           SizedBox(height: 10,),
                          //  Text(Trainings[index]['video']!.toString()),
                         ],
                       ),
                     ),
                   );
                  }

               ),

             ],
           ),
         ),
       ],
     ),
     
    );
  }
}
