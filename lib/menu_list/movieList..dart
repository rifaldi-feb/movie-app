import 'package:flutter/material.dart';
import 'package:my_movie_app/data_dummy/filmData.dart';
import 'package:my_movie_app/detail_film/detailFilm.dart';
import 'package:my_movie_app/menu_list/gridMovie.dart';

class MovieList extends StatelessWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Movie App',
          ),
          backgroundColor: Colors.blue[400],
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= 750) {
              return const ListItem();
            } else if (constraints.maxWidth <= 1200) {
              return const GridWidget(gridCount: 3);
            } else {
              return const GridWidget(gridCount: 5);
            }
          },
        ));
  }
}

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          final FilmData data = dataFilm[index];
          return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailFilm(data: data);
                }));
              },
              child: Card(
                  child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(data.image_path),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text(data.tittle), Text(data.release_date)],
                      ),
                    )
                  ],
                ),
              )));
        },
        itemCount: dataFilm.length);
  }
}
