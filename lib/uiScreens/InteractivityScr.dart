import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InteractivityScr extends StatefulWidget{


  @override
  State<InteractivityScr> createState() => _IntractivityState();

}

class _IntractivityState extends State<InteractivityScr> {
  
  List<Trip> listTrip=[];
  
  @override @override
  void initState() {
    super.initState();
    
    listTrip.add(Trip(1, 'Lahore', 'Pakistan', 30000));
    listTrip.add(Trip(2, 'Islamabad', 'Pakistan', 50000));
    listTrip.add(Trip(3, 'Karachi', 'Pakistan', 20000));
    listTrip.add(Trip(4, 'Rawalpendi', 'Pakistan', 10000));
    listTrip.add(Trip(5, 'Multan', 'Pakistan', 5000));
    listTrip.add(Trip(6, 'Rahim Yar Khan', 'Pakistan', 3000));
    listTrip.add(Trip(7, 'Bahawalpur', 'Pakistan', 24000));
    listTrip.add(Trip(8, 'Quatta', 'Pakistan', 300000));
    listTrip.add(Trip(9, 'Feroza', 'Pakistan', 300));
    listTrip.add(Trip(10, 'Khanpur', 'Pakistan', 1000));
    listTrip.add(Trip(11, 'Liaquatpur', 'Pakistan', 1500));
    listTrip.add(Trip(12, 'Zahir peer', 'Pakistan', 2000));
    listTrip.add(Trip(13, 'Mian Wali', 'Pakistan', 5000));
    listTrip.add(Trip(14, 'Hydrabad', 'Pakistan', 10000));
    listTrip.add(Trip(15, 'Pishawar', 'Pakistan', 35000));
    listTrip.add(Trip(16, 'Gilgit', 'Pakistan', 60000));
    listTrip.add(Trip(17, 'london', 'Pakistan', 500000));
    listTrip.add(Trip(18, 'Uk', 'Pakistan', 3000000));
    listTrip.add(Trip(19, 'Kutmando', 'Pakistan', 1500000));
    listTrip.add(Trip(20, 'Nipal', 'Pakistan', 1000000));
    listTrip.add(Trip(21, 'Sirilinka', 'Pakistan', 500000));
    listTrip.add(Trip(22, 'New Dilli', 'Pakistan', 100000));
  }

  ListTile buildListTile(int index){
    return ListTile(
      title: Text(listTrip[index].location, style: TextStyle(fontSize: 20),),
      subtitle: Text(listTrip[index].Country, style: TextStyle(fontSize: 16),),
      leading: Icon(Icons.flight),
      trailing: Text(listTrip[index].fare.toString(), style: TextStyle(fontSize: 20,color: Colors.red),),
    );
  }
  Widget builBackGround(){
    return Container(
      color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.done),
          Text('Completed',style: TextStyle(color: Colors.white, fontSize: 20),)
        ],
      ),
    );
  }
  Widget buildSecoundaryBackGround(){
    return Container(
      color: Colors.pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.cancel),
          Text('Canceled',style: TextStyle(color: Colors.white, fontSize: 20),)
        ],
      ),
    );
  }

  void onCompletedTrip(){

  }
  void onCanceledTrip(){

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Interactivity'),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: listTrip.length,
            itemBuilder: (context, index){
              return Dismissible(
                  key:Key(listTrip[index].id.toString()),
                  child: buildListTile(index),
                background: builBackGround(),
                secondaryBackground: buildSecoundaryBackGround(),
                onDismissed: (DismissDirection direction){
                    direction==DismissDirection.startToEnd ? onCompletedTrip() : onCanceledTrip() ;
                },
              );
            }
        ),
      ),
    );
  }
}

class Trip {
  int id ;
  String location;
  String Country;
  int fare;
  
  Trip(this.id, this.location,this.Country,this.fare);
}

