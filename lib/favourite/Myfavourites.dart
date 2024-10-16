import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_arc/favourite/favourite.dart';
import 'package:provider_arc/favourite/provider.dart';

class Myfavourites extends StatefulWidget {
  const Myfavourites({super.key});

  @override
  State<Myfavourites> createState() => _MyfavouritesState();
}

class _MyfavouritesState extends State<Myfavourites> {
  @override
  Widget build(BuildContext context) {
    final favourite = Provider.of<Favorite_Provider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Myfavourites()));
            },
            icon: const Icon(Icons.favorite),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount : favourite.getSelectedItem.length,
              itemBuilder: (context , index){
                return Consumer<Favorite_Provider>(builder:(context,value,child){
                  return ListTile(
                    onTap: (){
                      value.contains(index)? value.remove(index):value.add(index);
                    },
                    title: Text('Item ${index.toString()}'),
                    trailing:
                    value.contains(index)? const Icon(Icons.favorite,color:Colors.pink):const Icon(Icons.favorite_border),
                  );
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
