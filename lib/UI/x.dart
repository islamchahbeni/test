   /** 
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
                                    },
                                        )
                              )
                         ),),

                         
*/

/**
   Container(child: 
                PageView(
                  children:[
                    Container(
                      color:Colors.transparent,
                      child:Image.asset('lib/images/1.png')
                    )
                  ]

                        )
           ,),
                  Container(child: 
                          PageView(
                            children:[
                              Container(
                                color:Colors.transparent,
                                child:Image.asset('lib/images/2.png')
                              )
                            ]

                                  )
                    ,),
 */



//flutter pub add flutter_config
//flutter pub add vertical_stepper
//flutter pub add go_router
//flutter run -d chrome --no-sound-null-safety
