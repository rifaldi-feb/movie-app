import 'package:flutter/material.dart';
import 'package:my_movie_app/data_dummy/filmData.dart';
import 'package:my_movie_app/detail_film/detailWebView.dart';
import 'package:my_movie_app/detail_film/mobileDetailView.dart';

class DetailFilm extends StatelessWidget {
  final FilmData data;
  const DetailFilm({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 550) {
            return MobileDetailScreen(data: data);
          } else {
            return DetailDekstopView(
              data: data,
            );
          }
        },
      ),
      floatingActionButton: FavoriteButton(),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: _toggleFavorite,
      backgroundColor: isFavorite ? Colors.red : Colors.grey,
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
      ),
    );
  }
}
