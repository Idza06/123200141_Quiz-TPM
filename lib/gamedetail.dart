import 'package:flutter/material.dart';
import 'game_store.dart';

class GameDetail extends StatefulWidget {
  final int gameIdx;
  const GameDetail ({Key? key, required this.gameIdx}) : super(key: key);

  @override
  State<GameDetail> createState() => _GameDetailState();
}

class _GameDetailState extends State<GameDetail> {
  @override
  Widget build(BuildContext context) {
    final GameStore game_store = gameList[widget.gameIdx];
    return Scaffold(
      appBar: AppBar(
        title: Text(game_store.name),
      ),
      body: Column(
        children: [
          SizedBox(
              height: 20
          ),
          Container(
            // decoration: ,
            child: Text('Release Date: ${game_store.releaseDate}'),
          ),
          SizedBox(
              height: 20
          ),
          Container(
            // decoration: ,
            child: Text('Reviews: ${game_store.reviewAverage}'),
          ),
          Container(
            height: MediaQuery.of(context).size.height/3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index){
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Image.network(game_store.imageUrls[index])
                );
              }
            ),
          ),
          SizedBox(
              height: 20
          ),
          Container(
            // decoration: ,
            child: Text(game_store.about),
          ),
          SizedBox(
              height: 20
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                  Icon(Icons.money),
                  Text(game_store.price)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
