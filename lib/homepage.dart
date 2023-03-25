import 'package:flutter/material.dart';
import 'game_store.dart';
import 'gamedetail.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Store"),
    ),
    body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
          itemBuilder: (context, index){
          final GameStore game_store = gameList[index];
          return Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return GameDetail(gameIdx: index);
                      })
                  );
                },
                child:
                Card(
                  child: Image.network(game_store.imageUrls[0],
                    width: MediaQuery.of(context).size.width/2-50,
                    fit: BoxFit.cover,
                  ),
                  //title: Text('${game_store.name}'),
                  //trailing: Text('Rp ${game_store.price}'),
                ),
              ),
            ],
          );
          },
          itemCount: gameList.length,
        ),
    )
    );
  }
}