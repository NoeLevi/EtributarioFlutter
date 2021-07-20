import 'package:flutter/material.dart';
import 'home.dart';
import 'chat.dart';
import 'payment.dart';



class Dashboard extends StatefulWidget{
  @override
_DashboardState createState() => new _DashboardState();
}

 class _DashboardState extends State<Dashboard> with SingleTickerProviderStateMixin{

  TabController controller;

@override
  void initState() {
    super.initState();
controller = new TabController(vsync: this,length: 3);
    
  }  

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  final appBar =new AppBar(
        bottomOpacity:0.0,
        elevation: 0,
        toolbarOpacity: 1,
        title: new Text("E-Tributacao",style: TextStyle(
          fontSize: 24
        ),),
        centerTitle: true,     
        
        leading: new Icon(Icons.camera_alt),
        backgroundColor: Color(0xFFf5851f),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 32),
              child: Icon(Icons.menu)

          )
        ],
      );
       bottomNavigationBar(control){


      return new Material( 
             
        color:Colors.black12,
          child: new TabBar(
          
              controller:control ,
            tabs: <Widget>[
               new Tab(
                icon: Icon(Icons.home, color: Color(0xFFf5851f),) 
              ),
             new Tab(
                icon: Icon(Icons.chat,color: Color(0xFFf5851f))
              ),
              new Tab(
                icon: Icon(Icons.attach_money,color: Color(0xFFf5851f),) 
              ),
               
            ],
          ),
        );
      }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: appBar,
      
      body: new TabBarView( 
      
        controller: controller,
        children:<Widget>[
          new Home(),
          new Chat(),
          new Payment(),
        ],

      ),
      bottomNavigationBar: bottomNavigationBar(controller)

      
      
    );
  }
}