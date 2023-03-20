import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterStatusbarcolor {
  static void setStatusBarColor(Color white) {}
}

class ConsulterLotAssociation extends StatefulWidget {
const ConsulterLotAssociation({Key? key, String? detailsPath,  String? label}) : super(key: key);

  @override
  State createState() => _ConsulterLotAssociationState();
}


class _ConsulterLotAssociationState extends State {
  bool loading = false;
  final emailcon = TextEditingController();
  final passwordcon = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  Widget _lista() {
    return Container(
      width: 70.0,
      //margin: EdgeInsets.only(left: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            items:
                <String>['rouge', 'bleu', 'vert', 'jaune'].map((String value) {
              //isExpanded:true;
              InputDecoration(
                labelText: 'Input',
              );

              EdgeInsets.symmetric(vertical: 10);

              return new DropdownMenuItem<String>(
                value: value,
                child: new Text(value),
              );
            }).toList(),
            onChanged: (_) {},
            value: 'rouge'),
      ),
    );
  }

  Widget _deleteButton() {
    return Container(
      width: 60,
      height: 25,

      //padding: EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(65)),
          boxShadow: <BoxShadow>[
            /* BoxShadow(
                color: Colors.grey.shade200,
                //offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)*/
          ],
          gradient: LinearGradient(
              //begin: Alignment.centerLeft,
              //end: Alignment.centerRight,
              colors: [
                Color(0xff45b09b),
                Color(0xFF5cc697),
                Color(0xff68d297),
              ])),

      child: Row(
        children: [
          Text(
            '  Supprimer',
            style: GoogleFonts.montserrat(fontSize: 8, color: Colors.white),
          ),
          Icon(
            Icons.delete,
            size: 8,
            color: Color(0xFFE0ECDE),
          ),
        ],
      ),
    );
  }

  Widget _enrgButton() {
    return Container(
      width: 70,
      height: 25,
      //padding: EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(65)),
          boxShadow: <BoxShadow>[
            /* BoxShadow(
                color: Colors.grey.shade200,
                //offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)*/
          ],
          gradient: LinearGradient(
              //begin: Alignment.centerLeft,
              //end: Alignment.centerRight,
              colors: [
                Color(0xff2f6986),
                Color(0xFF4b96aa),
                Color(0xff54a4b6),
              ])),
      child: Row(
        children: [
          Text(
            '    Modifier',
            style: GoogleFonts.montserrat(fontSize: 10, color: Colors.white),
          ),
          Icon(
            Icons.edit,
            size: 13,
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
        backgroundColor: Color(0xFF2c6975),
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
              color: Color(0xFF2c6975),
              /* borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )*/
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 55,
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    margin: new EdgeInsets.symmetric(horizontal: 40.0),
                    width: MediaQuery.of(context).size.height * 0.5,
                    height: 440,
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
                              SizedBox(height: 40),
                              Icon(
                                Icons.hourglass_bottom_sharp,
                                color: Color(0xFF2c6975),
                              ),
                              /*Image.asset(
                                'lib/images/usr.png',
                                /*fit: BoxFit.contain,
                                height: 10,*/
                              ),*/
                              Text(
                                " Opération",
                                style: GoogleFonts.montserrat(
                                    color: Color(0xFF2c6975),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24),
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
                                SizedBox(height: 30),
                                TextField(
                                  keyboardType: TextInputType.name,
                                  /*onChanged: (value) {
                          name = value;
                        },*/
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10),
                                    hintText: 'Quantité',
                                    icon: new Icon(
                                      Icons.person,
                                      size: 20,
                                      color: Color(0xFF2c6975),
                                    ),
                                    labelText: 'Quantité',
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF205072),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  keyboardType: TextInputType.name,
                                  /*onChanged: (value) {
                          name = value;
                        },*/
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10),
                                    hintText: 'Numéro lot',
                                    labelText: 'Numéro lot',
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF205072),
                                    ),
                                    icon: new Icon(
                                      Icons.person,
                                      size: 20,
                                      color: Color(0xFF2c6975),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  keyboardType: TextInputType.name,
                                  /*onChanged: (value) {
                          name = value;
                        },*/
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10),
                                    hintText: 'Localisation',
                                    labelText: 'Localisation',
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF205072),
                                    ),
                                    icon: new Icon(
                                      Icons.account_box_rounded,
                                      size: 20,
                                      color: Color(0xFF2c6975),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.hourglass_bottom_outlined,
                                      size: 20,
                                      color: Color(0xFF2c6975),
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      "Etat de l\'opération",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: Color(0xFF205072),
                                      ),
                                    ),
                                    SizedBox(width: 30),
                                    _lista(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          /*SizedBox(
                            height: 5,
                          ),*/
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              /*TextButton(
                                  /*onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                forgetpassword()));
                                  },*/
                                  child: Text(
                                    "Forgot password?",
                                    style: TextStyle(color: Colors.black),
                                  )),*/
                            ],
                          ),
                          /* SizedBox(
                            height: 55,
                          ),*/
                          /*roundbutton(
                              title: "Login",
                              tapfun: () {
                                FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                        email: emailcon.text.toString(),
                                        password: passwordcon.text.toString())
                                    .then((value) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              homescreen(name: '')));
                                }).onError((error, stackTrace) {
                                  toastmessage(error.toString());
                                });
                              }),*/

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
                                    height: 40,
                                  ),
                                  _enrgButton(),
                                  SizedBox(
                                    width: 13,
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
    if (location.startsWith('HomeAssociation')) {
      return 0;
    }
    if (location.startsWith('SearchAssociation')) {
      return 1;
    }
    if (location.startsWith('ProfilAssociation')) {
      return 2;
    }
    return 0;
  }
  void onTap(int value) {
    switch (value) {
      case 0:
        return context.push('/HomeAssociation');
      case 1:
        return context.push('/SearchAssociation');
      case 2:
        return context.push('/SearchAssociation');
      default:
        return context.push('/ProfilAssociation');
    }
  }
}