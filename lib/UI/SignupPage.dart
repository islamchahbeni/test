import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget _entryField() {
    return Container(
      width: 300,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.tightFor(width: 300),

//bech nekhdemhom kol lehne w naaytelhom mara bark
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Nom',
                    labelText: 'Nom',
                    labelStyle: TextStyle(
                      color: Color(0xFF205072),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  /* onChanged: (value) {
                          email = value;
                        },*/
                  decoration: InputDecoration(
                    hintText: 'Prénom',
                    labelText: 'Prénom',
                    labelStyle: TextStyle(
                      color: Color(0xFF205072),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                TextField(
                  keyboardType: TextInputType.name,
                  /*onChanged: (value) {
                          name = value;
                        },*/
                  decoration: InputDecoration(
                    hintText: 'User Name',
                    labelText: 'User Name',
                    labelStyle: TextStyle(
                      color: Color(0xFF205072),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.name,
                  /*onChanged: (value) {
                          name = value;
                        },*/
                  decoration: InputDecoration(
                    hintText: 'Mot de passe',
                    labelText: 'Mot de passe',
                    labelStyle: TextStyle(
                      color: Color(0xFF205072),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                TextField(
                  keyboardType: TextInputType.name,
                  /*onChanged: (value) {
                          name = value;
                        },*/
                  decoration: InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Color(0xFF205072),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                TextField(
                  keyboardType: TextInputType.name,
                  /*onChanged: (value) {
                          name = value;
                        },*/
                  decoration: InputDecoration(
                    hintText: 'Téléphone',
                    labelText: 'Téléphone',
                    labelStyle: TextStyle(
                      color: Color(0xFF205072),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                TextField(
                  keyboardType: TextInputType.name,
                  /*onChanged: (value) {
                          name = value;
                        },*/
                  decoration: InputDecoration(
                    hintText: 'Numéro de contrat',
                    labelText: 'Numéro de contrat',
                    labelStyle: TextStyle(
                      color: Color(0xFF205072),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _submitButton() {
    return 
    GestureDetector(
        onTap: () {
       GoRouter.of(context).push('/Login');
          },
    child:
    Container(
      width: 200,
      padding: EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(65)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xfff56C596),
                Color(0xFF57a9ba),
                Color(0xfff56C596),
                Color(0xFF4992a7),
              ])),
      child: Text(
        'S\'inscrire',
        style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),
      ),
    ));
 
 
  }

  Widget _loginAccountLabel() {
    return InkWell(
      /*onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },*/

      child: Container(
        //margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        alignment: FractionalOffset.bottomCenter,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Vous avez déjà un compte ?',
              style: GoogleFonts.montserrat(
                  fontSize: 13, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
            onTap: () {
            GoRouter.of(context).push('/Login');
                },
           child:
            Text(
              'Identifiez vous',
              style: GoogleFonts.montserrat(
                  color: Color(0xfff56C596),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
                       ),
          
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
          text: 'S\'inscrire',
          style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.w300,
              color: Color(0xff205072)),
          children: [
            TextSpan(
              text: ' \n Veuillez créer votre compte',
              style: GoogleFonts.montserrat(
                  color: Color.fromARGB(255, 79, 77, 77), fontSize: 10),
            ),
          ]),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField(),
      ],
    );
  }

  Widget _inform() {
    return Container(
      child: Icon(Icons.info),
      //color: Color(0xFF205072),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .1),
                    _title(),
                    SizedBox(
                      height: 10,
                    ),
                    _emailPasswordWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    _submitButton(),
                    //SizedBox(height: height * .10),
                    SizedBox(
                      height: 50,
                    ),
                    _loginAccountLabel(),
                  ],
                ),
              ),
            ),
            Positioned(top: 40, left: 0, child: _backButton()),
            Positioned(bottom: 0, right: 0, child: _inform()),
          ],
        ),
      ),
    );
  }
}