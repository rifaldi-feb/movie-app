import 'package:flutter/material.dart';
import 'package:my_movie_app/data_dummy/filmData.dart';
import 'package:my_movie_app/detail_film/detailFilm.dart';

class GridWidget extends StatelessWidget {
  final int gridCount;
  const GridWidget({super.key, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: gridCount,
      children: dataFilm.map((data) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailFilm(data: data);
            }));
          },
          child: Card(
              child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.network(data.image_path),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(data.tittle),
                Text(data.release_date)
              ],
            ),
          )),
        );
      }).toList(),
    );
  }
}
