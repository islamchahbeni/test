import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vertical_stepper/vertical_stepper.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:vertical_stepper/vertical_stepper.dart' as step;
class FlutterStatusbarcolor {
  static void setStatusBarColor(Color white) {}
}


// ignore: non_constant_identifier_names

class TrackingAdherent extends StatefulWidget{
  @override
  _TrackingAdherentState createState() => _TrackingAdherentState();
}
class _TrackingAdherentState extends State<TrackingAdherent> with TickerProviderStateMixin{
  //List of data for stepper
  List <step.Step> steps=[
    step.Step(shimmer: false,
    title: 'Pharmacie',
    iconStyle: Color(0xff7be495),
    content: Align(alignment:Alignment.centerLeft,
    child: Text('Date : 12 Fevrier 2023'),
    
     
    ),
    ),
      step.Step(shimmer: false,
    title: 'En cours de livraison',
    iconStyle: Color(0xff7be495),
    content: Align(alignment:Alignment.centerLeft,
    child: Text('Date : 14 Fevrier 2023'),
    
    
    ),
    ),
      step.Step(shimmer: false,
    title: 'Association',
    iconStyle: Colors.grey,
    content: Align(alignment:Alignment.centerLeft,
    child: Text('Pas encore.'),
    
    
    ),
    ),


  ];
  
  
  
  
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
                height: 250,
                width: double.infinity,
                color: Color(0xFF205072),
                child: 
                //hedha bech ywali fih taswira
                          Image.asset(
                            'lib/images/6.png',
                            //fit: BoxFit.contain,

                          ),
                          

                // labelText: 'Enter your username',
        ),
  
   

        Container(
          height: 80,
          child:
          //hedha bech ywali fih info doperation
              Padding
              (padding:const EdgeInsets.fromLTRB(0,5, 0, 0),
              child: 
              ListTile(
              leading: Icon(Icons.delivery_dining,size: 50.0, color: Color(0xFF329D9C,)),
              title: Text('Numero operation',style: TextStyle(fontWeight: FontWeight.normal,fontSize:15),),
              subtitle:Text('Date: 12-Fev-2022 \n Pharmacie : kjnck \n Quantité : 8',style: TextStyle(fontWeight: FontWeight.w100,fontSize:12),) ,
              onTap: () {
              },
            ),
            )

          ),
          
          
          const Divider(
            height: 15,
            thickness:0,
            indent: 15,
            endIndent:15,
            color: Color(0xffd7ddd6),
          ),
     
     
       Expanded(
        //hedha bech ywali fih tracking
          child: VerticalStepper(steps : steps,
          dashLength:2))
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