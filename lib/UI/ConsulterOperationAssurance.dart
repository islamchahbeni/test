import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterStatusbarcolor {
  static void setStatusBarColor(Color white) {}
}

class ConsulterOperationAssurance extends StatefulWidget {
const ConsulterOperationAssurance({Key? key, String? detailsPath,  String? label}) : super(key: key);

  @override
  State createState() => _ConsulterOperationAssuranceState();
}


class _ConsulterOperationAssuranceState extends State {
  final items = ['1', '2', '3'];

  bool loading = false;
  final emailcon = TextEditingController();
  final passwordcon = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  Widget _enrgButton() {
    return Container(
      width: 70,
      height: 25,
      //margin: const EdgeInsets.only(),

      //padding: EdgeInsets.symmetric(vertical: 8),
      //alignment: Alignment.center,
      margin: EdgeInsets.only(left: 5, right: 40),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(65)),
          boxShadow: <BoxShadow>[],
          gradient: LinearGradient(colors: [
            Color(0xff2f6986),
            Color(0xFF4b96aa),
            Color(0xff54a4b6),
          ])),
      child: Row(
        children: [
          Text(
            '        Ok ',
            style: GoogleFonts.montserrat(fontSize: 10, color: Colors.white),
          ),
          Icon(
            Icons.done,
            size: 15,
            color: Color(0xFFE0ECDE),
          ),
        ],
      ),
    );
  }

  Widget _backButton() {
    return InkWell(
      /*onTap: () {
        Navigator.pop(context);
      },*/
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: _backButton(),
        title: Image.asset(
          'lib/images/logo.png',
          fit: BoxFit.contain,
          height: 50,
        ),
        backgroundColor: Color(0xFFcde0c9),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.logout_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              //border: Border.all(color: Color.fromARGB(255, 11, 11, 11)),
              color: Color(0xFFcde0c9),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    margin: new EdgeInsets.symmetric(horizontal: 40.0),
                    width: MediaQuery.of(context).size.height * 0.5,
                    height: 450,
                    //height: MediaQuery.of(context).size.height * 0.7,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        border: Border.all(color: Color(0xffCDE0C9))),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 17,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.hourglass_bottom,
                                color: Color(0xFFcde0c9),
                              ),
                              Text(
                                " Opération",
                                style: GoogleFonts.montserrat(
                                    color: Color(0xFFcde0c9),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Form(
                            key: _formkey,
                            child: Column(
                              children: [
                                TextField(
                                  keyboardType: TextInputType.name,
                                  /*onChanged: (value) {
                          name = value;
                        },*/
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10),
                                    hintText: 'Nom Adhérent',
                                    labelText: 'Nom Adhérent',
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF205072),
                                    ),
                                    icon: new Icon(
                                      Icons.person,
                                      size: 20,
                                      color: Color(0xFFcde0c9),
                                    ),
                                  ),
                                ),
                                TextField(
                                  keyboardType: TextInputType.name,
                                  /*onChanged: (value) {
                          name = value;
                        },*/
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10),
                                    hintText: 'Prénom Adhérent',
                                    labelText: 'Prénom Adhérent',
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF205072),
                                    ),
                                    icon: new Icon(
                                      Icons.person,
                                      size: 20,
                                      color: Color(0xFFcde0c9),
                                    ),
                                  ),
                                ),
                                TextField(
                                  keyboardType: TextInputType.name,
                                  /*onChanged: (value) {
                          name = value;
                        },*/
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10),
                                    hintText: 'Nom pharmacie',
                                    labelText: 'Nom pharmacie',
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF205072),
                                    ),
                                    icon: new Icon(
                                      Icons.local_pharmacy,
                                      size: 20,
                                      color: Color(0xFFcde0c9),
                                    ),
                                  ),
                                ),
                                TextField(
                                  keyboardType: TextInputType.name,
                                  /*onChanged: (value) {
                          name = value;
                        },*/
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10),
                                    hintText: 'Date d\'ajout',
                                    icon: new Icon(
                                      Icons.calendar_month,
                                      size: 20,
                                      color: Color(0xFFcde0c9),
                                    ),
                                    labelText: 'Date d\'ajout',
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF205072),
                                    ),
                                  ),
                                ),
                                TextField(
                                  keyboardType: TextInputType.name,
                                  /*onChanged: (value) {
                          name = value;
                        },*/
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10),
                                    hintText: 'Quantité',
                                    labelText: 'Quantité',
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF205072),
                                    ),
                                    icon: new Icon(
                                      Icons.production_quantity_limits,
                                      size: 20,
                                      color: Color(0xFFcde0c9),
                                    ),
                                  ),
                                ),
                                TextField(
                                  keyboardType: TextInputType.name,
                                  /*onChanged: (value) {
                          name = value;
                        },*/
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10),
                                    hintText: 'Etat',
                                    labelText: 'Etat',
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF205072),
                                    ),
                                    icon: new Icon(
                                      Icons.hourglass_bottom,
                                      size: 20,
                                      color: Color(0xFFcde0c9),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          /*SizedBox(
                            height: 5,
                          ),*/
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            /*onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          loginwithphoneno()));
                            },*/
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    height: 65,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  _enrgButton(),
                                  SizedBox(
                                    width: 3,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
    if (location.startsWith('HomeAssurances')) {
      return 0;
    }
    if (location.startsWith('SearchAssurances')) {
      return 1;
    }
    if (location.startsWith('ProfilAssurances')) {
      return 2;
    }
    
    return 0;
  }
  void onTap(int value) {
    switch (value) {
      case 0:
        return context.push('/HomeAssurances');
      case 1:
        return context.push('/SearchAssociation');
      case 2:
        return context.push('/SearchAssurances');
      case 2:
        return context.push('/ProfilAssurances');
      default:
        return context.push('/HomeAssurances');
    }
  }
}