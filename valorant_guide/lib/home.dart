import 'package:flutter/material.dart';
import 'package:valorant_guide/data.dart';

class Home extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    

    final appBar = AppBar(
      elevation: .5,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: (){}
      ),

    
    title: Text('Valorant Guide'),
    actions: <Widget>[
      IconButton(icon: Icon(Icons.search),
      onPressed: (){},
      )
    ],

    );

    


    ////Create Character title
    createTitle(Character character) => Hero(
      tag: character.name,
      
      child: Material(
        elevation: 15.0,
        shadowColor: Colors.grey,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'detail/${character.name}');
          },
          child: Image(
            image: AssetImage(character.image),
            fit: BoxFit.cover,
            

          ),
        ),
      ),
    );

    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2/3,
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: characters.map((character) =>createTitle(character)).toList(),
            
            
        
          ),
        )
      ],
    );
    
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar,
      body: grid,
    );

  }
} 
