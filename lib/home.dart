import 'package:flutter/material.dart';

class Home extends StatelessWidget{

panel(context, icon, text){
  return Container(
            
            decoration: new BoxDecoration(
              
              border:Border.all(width:0.2, color: Colors.black87      
              ),
              color: Colors.white24,      
              boxShadow: [
                BoxShadow(
                    
                        color: Colors.black12,
                        offset:Offset(5, 5),
                        blurRadius:15 
                      )],
            ),
            padding: EdgeInsets.all(5),
            width:  MediaQuery.of(context).size.width/2.2,
            height:87 ,
            alignment: Alignment.topCenter,
            child: Column(
              
            children: <Widget>[
             Container(
               margin: EdgeInsets.only( top:5),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                color: Color(0xFFf5851f)
               ),
               alignment: Alignment.center,
               
               width: 40,
               height: 40,
               child: Icon(icon, color: Colors.white,)
                
             ), Container( 
               alignment: Alignment.center,
                            height: 30,
             child:  new Text(text, style: 
             TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 17, color: Color(0xFFf5851f)
             )
             ,)
             ),
             
             ],)          ,
          
            );
    
    
}

moviment(foto,nome,tipoMovimento,valor,data){
  return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
      children: <Widget>[
        Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(foto),
                      fit: BoxFit.cover
                    )
                    
                  ),),
        Column(
              mainAxisAlignment: MainAxisAlignment.start, 
              children:<Widget>
        [ 
          Text(nome, style: TextStyle(
            fontSize: 18
          ),),
          Text(tipoMovimento,style: TextStyle(
            fontSize: 16))
                    
          ]
    ),
     Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children:<Widget>
        [ 
          Text(valor,style: TextStyle(
            fontSize: 18)),
          Text(data,style: TextStyle(
            fontSize: 17))
                    
          ]
    ),
    ],);
}
@override
  Widget build(BuildContext context) {
    return Scaffold( 
      
      body: Stack(
        alignment: Alignment.center,
      children:<Widget>[
                         
         ListView(
      children: <Widget>[
           Container(
        padding: EdgeInsets.only(top:0),
        child: Column(
          
          children: <Widget>[
            Material(
              elevation: 4, 
              color: Color(0xFFf5851f),
              shadowColor: Color(0xFFf5851f),
                child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
               //alignment: Alignment.center,
                children: <Widget>[
              
                 Column(
                    children: <Widget>[
                      Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage("assets/levi.jpg"),
                      fit: BoxFit.cover
                    )
                  ),
                    alignment: Alignment.topCenter,
                    height: 100,
                    width: 100,
                   
                  ),
                  Container(
                    child: Text('Noe Levi Tete Junior',style: TextStyle(
                      color:Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                    ),),
                  ),
                  SizedBox(height: 40,)
                
                    ],
                 )      
               ]                    
            ))),
            SizedBox(height: 50,),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               
                 children: <Widget>[  
                   
            panel(context,Icons.email,"Convites de grupos"),
            panel(context,Icons.attach_money,'Pagamento')
                 ] 
            ),
            SizedBox(height: 20,),
            Row(
              
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[


                Padding(
                padding: EdgeInsets.only(left: 10),

                child:  Text('Ultimos Movimentos',style:TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.w400,
                         fontFamily: 'Arial'
                       ))
                ),
                       
               Icon(Icons.add, size: 30,)     

              ], 
            ),
            Column(
              children: <Widget>[
                moviment("assets/levi.jpg","Noe Levi","Transferencia","3 000 Mt","30/3/2019"),
                SizedBox(height: 10,),
                moviment("assets/levi.jpg","Higinio Levi","Recebeu","10 000 Mt","3/4/2019"),
                SizedBox(height: 10,),
                moviment("assets/levi.jpg","Helio Jose","Depositou","15 000 Mt","13/5/2019"),
              ],
            )
    
          ],
        ),
      
        
      ),
                  ],),
                   Positioned(
                             width: MediaQuery.of(context).size.width/1.5,
                    top: 130,    
                    height: 60,     
                    child: Material (  
                            elevation: 4.0,
                            
                        
                      child: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: <Widget>[
                                Container(  
                               alignment: Alignment.center,
      width: MediaQuery.of(context).size.width/3,
                           
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            
                             children: <Widget>[
                               Icon(Icons.group),
                               Text('Grupos',style: TextStyle(fontSize: 18),)
                             ],
                           ),
                          ),
                          Container(  
                                  width: MediaQuery.of(context).size.width/3,

                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border(left: BorderSide(width: 0.2))
                            ),
                                                      
                           
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                             children: <Widget>[
                               Icon(Icons.attach_money),
                               Text('Saldo',style: TextStyle(fontSize: 18),)
                             ],
                           ),
                          )
                        ],
                      ),                 
                                  
                    ) ,
                  ),
                  ])
    );
  }
}