import 'package:flutter/material.dart';
import 'package:flutter_application_2/UI/HomeAdherent.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, this.title, String? detailsPath, String? label}) : super(key: key);

  final String? title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              padding: EdgeInsets.only(left: 0.0, top: 0.0, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            /*Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))*/
          ],
        ),
      ),
    );
  }

  Widget _inform() {
    return Container(
      child: Icon(Icons.info),
      //color: Color(0xFF205072),
    );
  }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: GoogleFonts.montserrat(fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
              obscureText: isPassword,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                //border: InputBorder.none,
                //fillColor: Color(0xfff3f3f4),
                //filled: true
              ))
        ],
      ),
    );
  }

  Widget _submitButton() {
    return 
    GestureDetector(
      
    onTap: () {
       GoRouter.of(context).push('/HomeAdherent');
        //GoRouter.of(context).push('/HomePharmacien');
        //GoRouter.of(context).push('/HomeAssociation');
        //GoRouter.of(context).push('/HomeAssurances');
        //GoRouter.of(context).push('/EspaceAdmin');
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
                Color(0xFF57a9ba),
                Color(0xFF4992a7),
                Color(0xFF316c89),
              ])),
      child: Text(
        'Se connecter',
        style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),
      ),
      
    ));
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('OU'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      /*onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeAdherent()));
      },*/
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.fromLTRB(10, 0, 10, 20),

        //EdgeInsets.only(bottom: 80),
        alignment: Alignment.bottomCenter,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Vous n\'avez pas de compte ?',
              style: GoogleFonts.montserrat(
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
            onTap: () {
            GoRouter.of(context).push('/SignUp');
                },
            child:
            Text(
              'S\'inscrire',
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
          text: 'Se connecter',
          style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.w300,
              color: Color(0xff205072)),
          children: [
            TextSpan(
              text:
                  ' \n Veuillez saisir vos informations afin d\'accéder à votre compte',
              style: GoogleFonts.montserrat(
                  color: Color.fromARGB(255, 79, 77, 77), fontSize: 10),
            ),
          ]),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("UserName ou Email"),
        _entryField("Mot de passe", isPassword: true),
      ],
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
                  SizedBox(height: height * .2),

                  _title(),
                  //Text("Se connecter"),
                  SizedBox(height: 50),
                  _emailPasswordWidget(),
                  SizedBox(height: 20),
                  _submitButton(),
                  _divider(),
                  SizedBox(height: height * .055),
                  /*Container(
                    child: _createAccountLabel(),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                  ),*/
                ],
              ),
            ),
          ),
          //Positioned(top: 40, left: 0, child: _backButton()),
          Stack(
            children: [
              Positioned(top: 40, left: 0, child: _backButton()),
              Positioned(bottom: 0, right: 0, child: _inform()),
              Positioned(
                  // bottom: 0,
                  right: 50,
                  left: 50,
                  top: 650,
                  child: _createAccountLabel()),
            ],
          ),
        ],
      ),
    ));
  }
}