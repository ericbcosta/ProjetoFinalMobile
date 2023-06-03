import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("AppBar - Home"),
          ),
          body: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 1,
            children: [
              TextButton(
                onPressed: () {
                Navigator.pushNamed(context, '/DronePragGeral');
              },
              child: Container(
                child:  Row(
                  children: [
                     Image(
                    image: AssetImage('assets/DronePrag.png'),
                  ),
                      Text("DronePrag")
                    
                  ],
                ),
              ),
              ),     

              TextButton(
                onPressed: () {
                Navigator.pushNamed(context, '/AnimalTechGeral');
              },
              child: Container(
                child:  Row(
                  children: [
                     Image(
                    image: AssetImage('assets/AnimalTech.png'),
                  ),
                      Text("AnimalTech")
                    
                  ],
                ),
              ),
              ),   

              TextButton(
                onPressed: () {
                Navigator.pushNamed(context, '/PlantInfoGeral');
              },
              child: Container(
                child:  Row(
                  children: [
                     Image(
                    image: AssetImage('assets/PlantInfo.png'),
                  ),
                      Text("PlantInfo")
                    
                  ],
                ),
              ),
              ),  
            ],
          ),

          drawer: Drawer(
            child: ListView(
              children: [
                ListTile(
                  title: Text("DronePrag"),
                  onTap: () {
                    Navigator.pushNamed(context, '/DronePragGeral');
                  },
                ),
                ListTile(
                  title: Text("AnimalTech"),
                  onTap: () {
                    Navigator.pushNamed(context, '/AnimalTechGeral');
                  },
                ),
                ListTile(
                  title: Text("PlantInfo"),
                  onTap: () {
                  Navigator.pushNamed(context, '/PlantInfoGeral');

                  },
                ),
                
              ],
            ),
          )
          

          ),
    );
  }
}