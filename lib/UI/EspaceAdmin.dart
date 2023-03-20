import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class FlutterStatusbarcolor {
  static void setStatusBarColor(Color white) {}
}

class EspaceAdmin extends StatefulWidget {
const EspaceAdmin({Key? key, String? detailsPath,  String? label}) : super(key: key);

  @override
  State createState() => _EspaceAdminState();
}


class _EspaceAdminState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar:  AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.logout,
                        color: Color(0xFF45c5c7),
                      ),
                      onPressed: () {
                        // do something
                      },
                    )
                  ],

      ),
      
      body: Column(children:[
                      //texte 1
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
                                    Padding(
                                      padding:  EdgeInsets.symmetric(vertical: 20), 
                                      child: 
                                      Center(child:  
                                        Container(child: 

                                          // ignore: prefer_const_constructors
                                          Text("Dans l'espace admin",style:TextStyle(fontFamily: 'Montserrat',
                                                                    fontSize: 13.0,
                                                                    color: Color(0xff68B2A0),
                                                              )),
                                        ),
                                      ), 
                                    ),
                                ],)
                            ,),
                      //texte 2
                      Center(child:
                        Container(  
                          child: 
                          //image
                          Column(
                            
                                    children: [
                                      
                                      SizedBox(
                                        height: 300,
                                        width:double.infinity,
                                        child:Image.asset('lib/images/5.png',fit:BoxFit.contain,height:100,)
                                              ),
                                    SizedBox(
                                      height:20,
                                    ),
                                  ],
                                      ),            
                                    ),
                                  ),   
                      //les 2 boutons
                      Center(child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                //bouton 1
                                Container(
                                    decoration : BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                    colors:[Color(0xFF71da96),Color(0xFF61cb98), Color(0xFF3eaa9a)]
                                                            )
                                                              ),
                                    child:
                            
                                        SizedBox(
                                              width: 296,
                                              height: 40,
                                              child:
                                                  ElevatedButton(
                                                        child: Text('Gerer les médicaments',style:TextStyle(fontFamily: 'Montserrat',
                                                                    fontSize: 18.0,
                                                                    color: Colors.white,
                                                              )),
                                                        style: ElevatedButton.styleFrom(
                                                              //shape: const StadiumBorder(),
                                                              foregroundColor:Colors.white,
                                                              elevation: 2,
                                                              shadowColor: Colors.transparent,
                                                              backgroundColor:Colors.transparent ),
                                                             onPressed: () {GoRouter.of(context).push('/AdminMedicaments');},
                                                       
                                                        
                                                            )
                                                  )
                                            ),            
                                   ] ),
                                  ),   
                                 SizedBox(height: 20),
                                //bouton 2
                                Container(
                                    decoration : BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                    colors:[Color(0xFF45c5c7),Color(0xFF40bbbc), Color(0xFF36a6a6)]
                                                            )
                                                              ),
                                    child:
                                          
                                        SizedBox(
                                                width: 296,
                                                height: 40,
                                                child:
                                                      ElevatedButton(
                                                            child: Text('Gerer les comptes',style:TextStyle(fontFamily: 'Montserrat',
                                                                        fontSize: 18.0,
                                                                        color: Colors.white,
                                                                  )),
                                                            style: ElevatedButton.styleFrom(
                                                                  //shape: const StadiumBorder(),
                                                                  foregroundColor:Colors.white,
                                                                  elevation: 2,
                                                                  shadowColor: Colors.transparent,
                                                                  backgroundColor:Colors.transparent ),
                              
                                                            onPressed: () {GoRouter.of(context).push('/AdminComptes');},
                                                                )
                                                      ),
                                        ),            
                                   ] ),
                                     
                            
                      //navigation bar  
                       
bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        currentIndex: _calculateSelectedIndex(context),
        onTap: onTap,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35,
              color: Color(0xFFE0ECDE),
            ),
            label: 'Acceuil',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.medical_services_outlined,
              size: 35,
              color: Color(0xFFE0ECDE),
            ),
            label: 'Médicaments',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_search_outlined ,
              size: 35,
              color: Color(0xFF205072),
            ),
            label: 'Comptes',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_rounded,
              size: 35,
              color: Color(0xFFE0ECDE),
            ),
            label: 'Mon Profil',
          ),
        ],
        selectedItemColor: Colors.grey,
      ),
    
    
    
    );
  }
int _calculateSelectedIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;
    if (location.startsWith('EspaceAdmin')) {
      return 0;
    }
    if (location.startsWith('AdminMedicaments')) {
      return 1;
    }
    if (location.startsWith('AdminComptes')) {
      return 2;
    }
    if (location.startsWith('AdminProfil')) {
      return 3;
    }
    return 0;
  }
  void onTap(int value) {
    switch (value) {
      case 0:
        return context.push('/EspaceAdmin');
      case 1:
        return context.push('/AdminMedicaments');
      case 2:
        return context.push('/AdminComptes');
      case 2:
        return context.push('/ProfilAdmin');
      default:
        return context.push('/EspaceAdmin');
    }
  }
}