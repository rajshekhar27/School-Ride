import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DashboardScreenPrincipal extends StatefulWidget {
  const DashboardScreenPrincipal({super.key});

  @override
  State<DashboardScreenPrincipal> createState() => _DashboardScreenPrincipalState();
}

class _DashboardScreenPrincipalState extends State<DashboardScreenPrincipal> {
  List<Marker> _marker=[
    Marker(markerId: MarkerId('1'),
      position: LatLng(28.597757389699563, 77.30907934543356),
      infoWindow: InfoWindow(
        title: "My School",
      ),

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("My School"),

      ),
      body: GoogleMap(
          markers: Set<Marker>.of(_marker),
          initialCameraPosition: CameraPosition(
              target: LatLng(28.597757389699563, 77.30907934543356),
              zoom: 14
          ),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        child: Image.asset("assets/images/Principal.png"),
                        radius: 40,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "School Admin",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.directions_bus, size: 35,color: Colors.black,),
                title: Text("Buses",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              ListTile(
                leading: Icon(Icons.person, size: 35,color: Colors.black,),
                title: Text("Add Driver",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              ListTile(
                leading: Icon(Icons.group_add, size: 35,color: Colors.black,),
                title: Text("Add Students",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              ListTile(
                leading: Icon(Icons.logout, size: 35,color: Colors.black,),
                title: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
