import 'package:flutter/material.dart';
import 'package:my_movie_app/data_dummy/filmData.dart';

class DetailDekstopView extends StatelessWidget {
  final FilmData data;
  const DetailDekstopView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 64),
      child: Center(
        child: SizedBox(
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Detail Movie',
                    style: TextStyle(
                      fontFamily: 'Staatliches',
                      fontSize: 32,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ImageCard(data: data), DescCard(data: data)],
                ),
              ],
            )),
      ),
    )));
  }
}

class ImageCard extends StatelessWidget {
  final FilmData data;
  const ImageCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(data.image_path),
                SizedBox(height: 10),
                Container(
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          data.tittle,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        )))
              ],
            )),
      ),
    );
  }
}

class DescCard extends StatelessWidget {
  final FilmData data;
  const DescCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text('Synopsis'),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(data.synopsis),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('Director :'),
                const SizedBox(
                  width: 20,
                ),
                Text(data.director),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('Release Date :'),
                const SizedBox(
                  width: 20,
                ),
                Text(data.release_date),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
