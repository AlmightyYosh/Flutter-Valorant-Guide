import 'data.dart';
import 'rating_bar.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Character character;

  


  Detail(this.character);


  @override
  Widget build(BuildContext context) {

    final appBar = AppBar(
      elevation: .5,
      title: Text('Valorant Guide'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){},
        )
      ],
    );







    ////detail of book image and it's pages
    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Hero(
            tag: character.name,
            child: Material(
              elevation: 15.0,
              shadowColor: Colors.grey.shade300,
              child: Image(
                image: AssetImage(character.image),
                fit: BoxFit.cover,
                height: 150,
                width: 100,

              ),
            ),
          ),
        ),
        

      ],
    );


    ///Top right
    final topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text('${character.name}',isBold: true, color: Colors.black87, size: 18, padding: EdgeInsets.only(top: 10.0, bottom: 5.0),),

        text(
          'Class: ${character.charClass}',
          color: Colors.black54,
          size: 16,
          isBold: true,
          padding: EdgeInsets.only(top: 8.0, bottom: 5.0),
        ),
        text(
          'Ranking: ${character.charRank}',
          color: Colors.black54,
          size: 16,
          isBold: true,
          padding: EdgeInsets.only(top: 8.0, bottom: 5.0),
        ),
        text(
          'Region: ${character.charRegion}',
          color: Colors.black54,
          size: 16,
          isBold: true,
          padding: EdgeInsets.only(top: 8.0, bottom: 16.0),
        ),

        Row(
          children: <Widget>[
            
            RatingBar(rating: character.rating)
          ],
        ),

        SizedBox(height: 32.0),
        Material(
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.blue.shade200,
          elevation: 5.0,
        )

      ],
    );



    ///ablility 1
    final bottomLeft1 = Column(
      children: <Widget>[
        text('${character.abilityName1}',isBold: true, color: Colors.black87, size: 16, padding: EdgeInsets.only(top: 5.0, bottom: 5.0),),
        Padding(
          padding: EdgeInsets.only(bottom:16.0),
          child: Hero(
            tag: character.abilityName1,
            child: Material(
              elevation: 15.0,
              child:Image(
                image: AssetImage(character.abilityImg1),
                fit: BoxFit.cover,
                height: 70,
                width: 70,
                color: Colors.red,








              ),
            ),
          ),
        ),
        text('Charges: ${character.charge1}',isBold: true, color: Colors.grey.shade700, size: 13, padding: EdgeInsets.only(top: 5.0, bottom: 10.0),)
      ],
    );

    final bottomMid1 = Column(
      children: <Widget>[
        text('${character.abilityCost1}',isBold: true, color: Colors.black87, size: 16, padding: EdgeInsets.only(top: 10.0, bottom: 5.0),),
     
      ],
    );



    final bottomRight1 = Column(
      children: <Widget>[
        text('${character.abilityDes1}',isBold: true, color: Colors.black87, size: 13, padding: EdgeInsets.only(top: 10.0, bottom: 5.0),),
        
      ],
    );


    ///ablility 2
    final bottomLeft2 = Column(
      children: <Widget>[
        text('${character.abilityName2}',isBold: true, color: Colors.black87, size: 16, padding: EdgeInsets.only(top: 5.0, bottom: 5.0),),
        Padding(
          padding: EdgeInsets.only(bottom:16.0),
          child: Hero(
            tag: character.abilityName2,
            child: Material(
              elevation: 15.0,
              child:Image(
                image: AssetImage(character.abilityImg2),
                fit: BoxFit.cover,
                height: 70,
                width: 70,
                color: Colors.red,


              ),
            ),
          ),
        ),
        text('Charges: ${character.charge2}',isBold: true, color: Colors.grey.shade700, size: 13, padding: EdgeInsets.only(top: 5.0, bottom: 10.0),)
      ],
    );

    final bottomMid2 = Column(
      children: <Widget>[
        text('${character.abilityCost2}',isBold: true, color: Colors.black87, size: 16, padding: EdgeInsets.only(top: 10.0, bottom: 5.0),),
     
      ],
    );



    final bottomRight2 = Column(
      children: <Widget>[
        text('${character.abilityDes2}',isBold: true, color: Colors.black87, size: 13, padding: EdgeInsets.only(top: 10.0, bottom: 5.0),),
        
      ],
    );



      ///ablility 3
    final bottomLeft3 = Column(
      children: <Widget>[
        text('${character.abilityName3}',isBold: true, color: Colors.black87, size: 16, padding: EdgeInsets.only(top: 5.0, bottom: 5.0),),
        Padding(
          padding: EdgeInsets.only(bottom:16.0),
          child: Hero(
            tag: character.abilityName3,
            child: Material(
              elevation: 15.0,
              child:Image(
                image: AssetImage(character.abilityImg3),
                fit: BoxFit.cover,
                height: 70,
                width: 70,
                color: Colors.red,
                
              ),
            ),
          ),
        ),
        text('Charges: ${character.charge3}',isBold: true, color: Colors.grey.shade700, size: 13, padding: EdgeInsets.only(top: 5.0, bottom: 10.0),)
      ],
    );

    final bottomMid3 = Column(
      children: <Widget>[
        text('${character.abilityCost3}',isBold: true, color: Colors.black87, size: 16, padding: EdgeInsets.only(top: 10.0, bottom: 5.0),),
     
      ],
    );



    final bottomRight3 = Column(
      children: <Widget>[
        text('${character.abilityDes3}',isBold: true, color: Colors.black87, size: 13, padding: EdgeInsets.only(top: 10.0, bottom: 5.0),),
        
      ],
    );



    ///ablility 4
    final bottomLeft4 = Column(
      children: <Widget>[
        text('${character.abilityName4}',isBold: true, color: Colors.black87, size: 15, padding: EdgeInsets.only(top: 5.0, bottom: 5.0),),
        Padding(
          padding: EdgeInsets.only(bottom:16.0),
          child: Hero(
            tag: character.abilityName4,
            child: Material(
              elevation: 15.0,
              child:Image(
                image: AssetImage(character.abilityImg4),
                fit: BoxFit.cover,
                height: 70,
                width: 70,
                color: Colors.red,
                
              ),
            ),
          ),
        ),
        text('Charges: ${character.charge4}',isBold: true, color: Colors.grey.shade700, size: 13, padding: EdgeInsets.only(top: 5.0, bottom: 10.0),)
      ],
    );

    final bottomMid4 = Column(
      children: <Widget>[
        text('${character.abilityCost4}',isBold: true, color: Colors.black87, size: 16, padding: EdgeInsets.only(top: 10.0, bottom: 5.0),),
     
      ],
    );



    final bottomRight4 = Column(
      children: <Widget>[
        text('${character.abilityDes4}',isBold: true, color: Colors.black87, size: 13, padding: EdgeInsets.only(top: 10.0, bottom: 5.0),),
        
      ],
    );





    ///Title
    final bottomLeftTitle = Column(
      children: <Widget>[
        text('Abilities',isBold: true, color: Colors.black87, size: 13, padding: EdgeInsets.only(top: 10.0, bottom: 5.0, left: 40, right: 20),),
        
      ],
    );

    final bottomMidTitle = Column(
      children: <Widget>[
        text('Cost',isBold: true, color: Colors.black87, size: 13, padding: EdgeInsets.only(top: 10.0, bottom: 5.0, left: 40, right: 20),),
        
      ],
    );

    final bottomRightTitle= Column(
      children: <Widget>[
        text('Description',isBold: true, color: Colors.black87, size: 13, padding: EdgeInsets.only(top: 10.0, bottom: 5.0, left: 40, right: 20),),
        
      ],
    );

    //ultimate
    final ultimateTitle = Column(
      children: <Widget>[
        text('Ultimate',isBold: true, color: Colors.red, size: 15, padding: EdgeInsets.only(top: 10, bottom: 5, left: 30, right: 20),),
        
      ],
    );

    //description
    final topDes = Column(
      children: <Widget>[
        text('${character.description}',isBold: true, color: Colors.black, size: 13, padding: EdgeInsets.only(top: 5, left: 30, right: 30, bottom: 20),),
        
      ],
    );

    ///Syn
    final synTitle = Column(
      children: <Widget>[
        text('${character.name} Synergy',isBold: true, color: Colors.black, size: 14, padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),),
        
      ],
    );


    // Counter
    final conTitle = Column(
      children: <Widget>[
        text('${character.name} Counters',isBold: true, color: Colors.black, size: 14, padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),),
        
      ],
    );


    final syn1 = Container(
      child: Container(
        width: 60.0,
        height: 60.0,
        
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(character.imgSyn1),  )
        ),

      ), 
    );

    final syn2 = Container(
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(character.imgSyn2),  )
        ),

      ), 
    );

    final syn3 = Container(
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(character.imgSyn3),  )
        ),

      ), 
    );


  
    

    // Counter
   final con1 = Container(
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(character.imgCon1),  )
        ),

      ), 
    );
    

    final con2 = Container(
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(character.imgCon2),  )
        ),

      ), 
    );

    final con3 = Container(
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(character.imgCon3),  )
        ),

      ), 
    );




    

 

    final topContent = Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(bottom: 10.0, left: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 2, child: topLeft),
          Flexible(flex: 3, child: topRight,),
        ],
      ),
    );




     ///scrolling text description
    final bottomContent = Container(
      height: 400.0,


      


      child: new SingleChildScrollView(

        


        padding: EdgeInsets.only(bottom: 10.0, left: 10),
        child: Column(
          children: <Widget>[
            // description
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              Flexible(flex: 2, child: topDes,),
        
            ],
          ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              Flexible(flex: 2, child: bottomLeftTitle,),
              Flexible(flex: 2, child: bottomMidTitle),
              Flexible(flex: 2, child: bottomRightTitle,),
            ],
          ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              Flexible(flex: 2, child: bottomLeft1,),
              Flexible(flex: 1, child: bottomMid1),
              Flexible(flex: 2, child: bottomRight1,),
            ],
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              Flexible(flex: 2, child: bottomLeft2,),
              Flexible(flex: 1, child: bottomMid2),
              Flexible(flex: 2, child: bottomRight2,),
            ],
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              Flexible(flex: 2, child: bottomLeft3,),
              Flexible(flex: 1, child: bottomMid3),
              Flexible(flex: 2, child: bottomRight3,),
            ],
          ),


          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              Flexible(flex: 2, child: ultimateTitle,),
        
            ],
          ),


          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              Flexible(flex: 1, child: bottomLeft4,),
              Flexible(flex: 0, child: bottomMid4),
              Flexible(flex: 1, child: bottomRight4,),
            ],
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              Flexible(flex: 2, child: synTitle,),
              
            ],
          ),

          ///synagy
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              Flexible(flex: 1, child: syn1,),
              Flexible(flex: 1, child: syn2),
              Flexible(flex: 1, child: syn3),
            ],
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              Flexible(flex: 2, child: conTitle,),
              
            ],
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              Flexible(flex: 1, child: con1,),
              Flexible(flex: 1, child: con2),
              Flexible(flex: 1, child: con3),
            ],
          ),

          




          ],

        )
        

        
        
       
      
      )
    );









    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }




  ///create text wediget
  text(String data, {
    Color color = Colors.black87,
    num size = 14,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    bool isBold = false}) =>
    Padding(
      padding: padding,
      child: Text(data,
      style: TextStyle(
        color: color,
        fontSize: size.toDouble(),
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
      
    ),
  );
}