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
                                             leading: 
                      ConstrainedBox(
                        constraints: 
                            BoxConstraints(
                                        minWidth: 24,
                                        minHeight: 24,
                                        maxWidth: 44,
                                        maxHeight: 44,
                                      ),
                          child: Image.asset('lib/images/pill2.png',
                          fit: BoxFit.cover, height: 100, width: 80),
                                    ),
                        //leading: const Icon(Icons.medication_liquid),
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
                                
                                onPressed: () {GoRouter.of(context).push('/ConsulterMedicament');},
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

class AdminMedicaments extends StatefulWidget {
const AdminMedicaments({Key? key, String? detailsPath,  String? label}) : super(key: key);

  @override
  State createState() => _AdminMedicamentsState();
}


class _AdminMedicamentsState extends State {
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
                          backgroundColor: Color(0xFF329d9c),
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
                color: Color(0xFF329d9c),
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
                    Text( 'Les médicaments',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w100,color: Color(0xFF35617f)),textAlign: TextAlign.left,),
                
                ),
            Padding(
                  padding: const EdgeInsets.fromLTRB(0,10, 0, 0),
                  child:
                    MaterialButton(
                          onPressed: () {GoRouter.of(context).push('/AjouterMedicament');},
                          textColor: Colors.white,
                          color:Color(0xFF47cacc),
                          child: Icon(
                            Icons.add,
                            size: 15,
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        )
                
                   )
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