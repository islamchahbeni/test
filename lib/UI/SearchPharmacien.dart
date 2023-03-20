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
                        leading: const Icon(Icons.grid_view,color:Color(0xFF56c596),size: 40,),
                        trailing:
                                                SizedBox(
                        height: 30,
                        child:
                         FittedBox(
                        child:
                         FloatingActionButton.extended(
                                label: Text('Consulter',style:TextStyle(fontSize:15)), // <-- Text
                                backgroundColor: Color(0xFF47cacc),
                                icon: Icon( // <-- Icon
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                ),
                                onPressed: () {},
                                //onPressed: () {GoRouter.of(context).push('/ConsulterPharmacien');},
                              ),),),
                          title:
                           Text("Doliprane 100mg",
                              style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF35617f)),
                                ),
                        //subtitle: Text("12-FEV-2023"),
                              subtitle: Text("Pharmacie Boudaya. \n12-FEV-2023",
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


class SearchPharmacien extends StatefulWidget {
const SearchPharmacien({Key? key, String? detailsPath,  String? label}) : super(key: key);

  @override
  State createState() => _SearchPharmacienState();
}


class _SearchPharmacienState extends State {
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
                          backgroundColor: Color(0xFF56c596),
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
                color: Color(0xFF56c596),
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
        Padding(
        padding: const EdgeInsets.fromLTRB(0,10, 0, 5),
        child:
      
        Container(
          width: 400,
          child:
            Center(child:
             TextField(
              
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                labelText: 'Numero Opération',
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(
                      width: 1, //<-- SEE HERE
                      color: Colors.grey,),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          )
          ),
      
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
    if (location.startsWith('HomePharmacien')) {
      return 0;
    }
    if (location.startsWith('SearchPharmacien')) {
      return 1;
    }
    if (location.startsWith('ProfilPharmacien')) {
      return 2;
    }
    return 0;
  }
  void onTap(int value) {
    switch (value) {
      case 0:
        return context.push('/HomePharmacien');
      case 1:
        return context.push('/SearchPharmacien');
      case 2:
        return context.push('/ProfilPharmacien');
      default:
        return context.push('/HomePharmacien');
    }
  }
}