import 'package:flutter/material.dart';
import 'package:flutter_application_2/UI/loginPage.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class  _HomeState extends State<Home> {
  @override

  int currentIndex = 0;
  final List<String> images = [
    'lib/images/1.png',
    'lib/images/2.png',
    'lib/images/3.png',
    'lib/images/4.png'
  ];
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        appBar: null,
        body:
Column(children:[
  Center(child: 
          Column(
            children: [
              //texte Bienvenue
              Padding(padding:EdgeInsets.fromLTRB(0, 100, 0, 22) ,child: 
                Center(child:
                  Container(child: 
                    // ignore: prefer_const_constructors
                    Text('Bienvenue',style:TextStyle(fontFamily: 'Montserrat',
                                              fontSize: 21.0,
                                              color: Color(0xff205072),
                                        )
                                        ),   
                  ),
                ),
              ),

              //texte dans notre platforme
                Padding(padding:EdgeInsets.fromLTRB(0,0, 0,25) ,child: 
                  Center(child:  
                    Container(child: 

                      // ignore: prefer_const_constructors
                      Text('Dans notre platforme',style:TextStyle(fontFamily: 'Montserrat',
                                                fontSize: 13.0,
                                                color: Color(0xff68B2A0),
                                          )),
                    ),
                  ), 
                ),

            ],)
        ,),
        //container pour la carousell
          Center(child:
            Container(  
              child: Column(
                  children: [
                    SizedBox(
                      height:400,
                      width:double.infinity,
                      child:PageView.builder(
                                onPageChanged:(index) {
                                setState((){
                                      currentIndex = index;
                                });
                            },
                          itemCount: images.length,
                          itemBuilder: (context,index){
                              return SizedBox(
                                height: 400,
                                width: double.infinity,
                                child: Image.network(
                                                  images[index % images.length],
                                                  width: 50,
                                                  height: 50,
                                                  fit:BoxFit.cover,
                                  

                                                    )
                                                );
                                                   }
                                ,                   )
                                ),
                  SizedBox(
                    height:20,
                  ),
                  /*
                  Padding(padding:EdgeInsets.fromLTRB(150,0,0,0) ,child:(
                    Row(children: [
                      for(var i=0;i<images.length;i++)buildIndicator(currentIndex == i)
                    ],))

                        
                    ) */],
                    ),

                                
                  ),
                ),   
         //bouton commencer
          Center(child:
            Container(
                decoration : BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                colors:[Color(0xFF78e195),Color(0xFF78e195), Color(0xFF59c398)]
                                        )
                                          ),
                child:
         
                      SizedBox(
                          width: 296,
                          height: 40,
                          child:
                              ElevatedButton(
                                    child: Text('Commencer',style:TextStyle(fontFamily: 'Montserrat',
                                                fontSize: 18.0,
                                                color: Colors.white,
                                          )),
                                    style: ElevatedButton.styleFrom(
                                          //shape: const StadiumBorder(),
                                          foregroundColor:Colors.white,
                                          elevation: 2,
                                          shadowColor: Colors.transparent,
                                          backgroundColor:Colors.transparent ),
          
                                    onPressed: () {
                                      GoRouter.of(context).push('/Login');
                                    },
                                        )
                              )
                         ),),

          ],)
        );
      }
/*
  Widget buildIndicator(bool isSelected){
    return 
    
    Center(child:Container(
    height: isSelected ? 12 : 8,
    width: isSelected ? 12 : 8,
    decoration: BoxDecoration(
      shape : BoxShape.circle,
      color: isSelected ? Color(0xff68B2A0) : Colors.grey
    ),
    ));
  }
  */
}