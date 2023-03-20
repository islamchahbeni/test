import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FlutterStatusbarcolor {
  static void setStatusBarColor(Color white) {}
}


// ignore: non_constant_identifier_names
Widget _List() {
    return 
          ListView.builder(
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                    return
                        Column(children:<Widget> [
                       ListTile(
                       leading: const Icon(Icons.notifications,color:Color(0xFF205072),size: 40,),
                        trailing:
                        SizedBox(
                        height: 30,
                        child:
                         FittedBox(
                        child:
                         FloatingActionButton.extended(
                                label: Text('X',style:TextStyle(fontSize:15)), // <-- Text
                                backgroundColor: Color(0xFFf75010),
                              
                                onPressed: () {},
                              ),),),
                          title:
                           Text("",
                              style: TextStyle(
                              fontWeight: FontWeight.w100,
                              color: Color(0xFF205072)),
                                ),
                        //subtitle: Text("12-FEV-2023"),
                              subtitle: Text("Notifications",
                              style: TextStyle(
                             fontSize: 10,
                                               ),
                               ),
                            isThreeLine: true,
                            ),
                            const Divider(),
                        ],);
                    
                    
                     
                  
                    }
                    );
   
  
  }
class NotificationsAdherent extends StatefulWidget {
const NotificationsAdherent({Key? key, String? detailsPath,  String? label}) : super(key: key);

  @override
  State createState() => _NotificationsAdherentState();
}
class _NotificationsAdherentState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
                          centerTitle: true,
                          title: Image.asset(
                            'lib/images/logo.png',
                            fit: BoxFit.contain,
                            height: 50,
                          ),
                          backgroundColor: Color(0xFF205072),
                          actions: <Widget>[
                            // ignore: prefer_const_constructors
                            IconButton(
                              // ignore: prefer_const_constructors
                              icon: Icon(
                                Icons.logout_outlined,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
    
    body:
    Column(children: [
        //Container + Texte Bonjour


        Container(
                height: 200,
                width: double.infinity,
                color: Color(0xFF205072),
                child: 
                Align(
                  alignment: Alignment.topLeft,
                  child:
                    Padding(padding:const EdgeInsets.fromLTRB(55,30, 0, 10),
                       child:
                          Text( 'Bonjour',style: TextStyle(fontSize: 30,fontWeight: FontWeight.normal,color: Colors.white),textAlign: TextAlign.center,),
                          ),
                ),
                // labelText: 'Enter your username',
        ),
  
   

        Container(
          height: 40,
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Padding(
                  padding: const EdgeInsets.fromLTRB(17,10, 0, 5),
                  child:
                    Text( 'Vos notifications',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w100,color: Color(0xFF35617f)),textAlign: TextAlign.left,),
                
                ),
           ],)
          ),
       Expanded(
          child:_List() ,)
      /*
        Container(
          /*
          SALA7HA L MARA JEYA
        child: 


        */)
        */
    ],),

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
            ),
            label: 'Acceuil',  
          ),
          BottomNavigationBarItem(
            
            icon: Icon(
              Icons.search,
              size: 35,
              color: Color(0xFFE0ECDE),
            ),
            label: 'Recherche',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              size: 35,
              color: Color(0xFFE0ECDE),
            ),
            label: 'Notifications',
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
        selectedItemColor: Color(0xFF205072),
      ),
    
    
    
    );
  }
    int _calculateSelectedIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;
    if (location.startsWith('HomeAdherent')) {
      return 0;
    }
    if (location.startsWith('SearchAdherent')) {
      return 1;
    }
    if (location.startsWith('NotificationsAdherent')) {
      return 2;
    }
    if (location.startsWith('ProfilAdherent')) {
    return 3;
    }
    return 0;
  }
  void onTap(int value) {
    switch (value) {
      case 0:
        return context.push('/HomeAdherent');
      case 1:
        return context.push('/SearchAdherent');
      case 2:
        return context.push('/NotificationsAdherent');
      case 3:
        return context.push('/ProfilAdherent');
      default:
        return context.push('/home');
    }
  }
}