import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/UI/AdminComptes.dart';
import 'package:flutter_application_2/UI/AdminMedicaments.dart';
import 'package:flutter_application_2/UI/ConsulterCompte.dart';
import 'package:flutter_application_2/UI/ConsulterMedicament.dart';
import 'package:flutter_application_2/UI/EspaceAdmin.dart';
import 'package:flutter_application_2/UI/HomeAdherent.dart';
import 'package:flutter_application_2/UI/TrackingAdherent.dart';
import 'package:flutter_application_2/UI/HomePharmacien.dart';
import 'package:flutter_application_2/UI/LoginPage.dart';
import 'package:flutter_application_2/UI/SearchAdherent.dart';
import 'package:flutter_application_2/UI/SearchPharmacien.dart';
import 'package:go_router/go_router.dart';
import '../../UI/AjouterCompte.dart';
import '../../UI/AjouterMedicament.dart';
import '../../UI/AjouterOperationPharmacien.dart';
import '../../UI/ConsulterLotAssociation.dart';
import '../../UI/ConsulterOperationAssurance.dart';
import '../../UI/ConsulterOperationPharmacien.dart';
import '../../UI/Home.dart';
import '../../UI/HomeAssociation.dart';
import '../../UI/HomeAssurances.dart';
import '../../UI/MapAssociation.dart';
import '../../UI/NotificationsAdherent.dart';
import '../../UI/ProfilAdherent.dart';
import '../../UI/ProfilAdmin.dart';
import '../../UI/ProfilAgentAssociation.dart';
import '../../UI/ProfilAgentAssurances.dart';
import '../../UI/ProfilPharmacien.dart';
import '../../UI/SearchAssociation.dart';
import '../../UI/SearchAssurances.dart';
import '../../UI/SignupPage.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(path: "/",
  builder:(context,state)=>Home(),
  ),
  GoRoute(path: "/Login",
  builder:(context,state)=>LoginPage(),
  ),
  GoRoute(path: "/SignUp",
  builder:(context,state)=>SignUpPage(),
  ),
  GoRoute(path: "/HomeAdherent",
  builder:(context,state)=>HomeAdherent(),
  ),
  GoRoute(path: "/SearchAdherent",
  builder:(context,state)=>SearchAdherent(),
  ),
  GoRoute(path: "/NotificationsAdherent",
  builder:(context,state)=>NotificationsAdherent(),
  ),
  GoRoute(path: "/TrackingAdherent",
  builder:(context,state)=>TrackingAdherent(),
  ),
  GoRoute(path: "/ProfilAdherent",
  builder:(context,state)=>ProfilAdherent(),
  ),
  GoRoute(path: "/HomePharmacien",
  builder:(context,state)=>HomePharmacien(),
  ),
  GoRoute(path: "/SearchPharmacien",
  builder:(context,state)=>SearchPharmacien(),
  ),
  GoRoute(path: "/ConsulterPharmacien",
  builder:(context,state)=>ConsulterOperationPharmacien(),
  ),
  GoRoute(path: "/AjouterPharmacien",
  builder:(context,state)=>AjouterOperationPharmacien(),
  ),


  GoRoute(path: "/ProfilPharmacien",
  builder:(context,state)=>ProfilPharmacien(),
  ),
  
  GoRoute(path: "/HomeAssociation",
  builder:(context,state)=>HomeAssociation(),
  ),
  GoRoute(path: "/SearchAssociation",
  builder:(context,state)=>SearchAssociation(),
  ),
  GoRoute(path: "/MapAssociation",
  builder:(context,state)=>MapAssociation(),
  ),
  GoRoute(path: "/ConsulterAssociation",
  builder:(context,state)=>ConsulterLotAssociation(),
  ),
  GoRoute(path: "/ProfilAssociation",
  builder:(context,state)=>ProfilAgentAssociation(),
  ),
  GoRoute(path: "/HomeAssurances",
  builder:(context,state)=>HomeAssurances(),
  ),
  GoRoute(path: "/SearchAssurances",
  builder:(context,state)=>SearchAssurances(),
  ),
  GoRoute(path: "/ConsulterAssurances",
  builder:(context,state)=>ConsulterOperationAssurance(),
  ),
  GoRoute(path: "/ProfilAssurances",
  builder:(context,state)=>ProfilAgentAssurances(),
  ),
  GoRoute(path: "/EspaceAdmin",
  builder:(context,state)=>EspaceAdmin(),
  ),
  GoRoute(path: "/AdminComptes",
  builder:(context,state)=>AdminComptes(),
  ),
  GoRoute(path: "/AdminMedicaments",
  builder:(context,state)=>AdminMedicaments(),
  ),
  GoRoute(path: "/AjouterCompte",
  builder:(context,state)=>AjouterCompte(),
  ),
  GoRoute(path: "/AjouterMedicament",
  builder:(context,state)=>AjouterMedicament(),
  ),
  GoRoute(path: "/ConsulterCompte",
  builder:(context,state)=>ConsulterCompteAdmin(),
  ),
  GoRoute(path: "/ConsulterMedicamentAdmin",
  builder:(context,state)=>ConsulterMedicament(),
  ),
  GoRoute(path: "/ProfilAdmin",
  builder:(context,state)=>ProfilAdmin(),
  ),
]);
