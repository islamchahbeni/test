import 'package:flutter/material.dart';
import 'package:flutter_application_2/UI/test.dart';
import 'package:flutter_application_2/project/routes/app_route_config.dart';
import '../UI/Home.dart';
import '../UI/HomePharmacien.dart';
import '../UI/EspaceAdmin.dart';
import '../UI/HomeAdherent.dart';
import '../UI/SearchAdherent.dart';
import '../UI/HomeAssociation.dart';
import '../UI/HomeAssurances.dart';
import '../UI/SearchPharmacien.dart';
import '../UI/SearchAssociation.dart';
import '../UI/SearchAssurances.dart';
import '../UI/MapAssociation.dart';
import '../UI/NotificationsAdherent.dart';
import '../UI/TrackingAdherent.dart';
import '../UI/AdminMedicaments.dart';
import '../UI/AdminComptes.dart';


class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      
    );
  }
}

