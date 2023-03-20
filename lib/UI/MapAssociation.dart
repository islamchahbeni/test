import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart'; // Suitable for most situations
import 'package:flutter_map/plugin_api.dart'; // Only import if required functionality is not exposed by default
import 'package:latlong2/latlong.dart';


class MapAssociation extends StatefulWidget{
  @override
  _MapAssociation createState() => _MapAssociation();
}
class _MapAssociation extends State<MapAssociation>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
          appBar: AppBar(
                                    centerTitle: true,
                                    title: Image.asset(
                                      'lib/images/logo.png',
                                      fit: BoxFit.contain,
                                      height: 50,
                                    ),
                                    backgroundColor: Color(0xFF2c6975),
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
          body : Center(child:
                   Container(child:
                       Column(children: [
                          Flexible(child:
                          FlutterMap(
                          options:MapOptions(
                            center: LatLng(36.806389, 10.181667),
                            zoom:8,
                          ),
                          children:[
                            TileLayer(
                              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                              subdomains: ['a','b','c'],


                            )


                          ]
                         
                          ),),
                       
                       
                       
                         ],
                         ),
                         )
                         )
    );
  }
}

