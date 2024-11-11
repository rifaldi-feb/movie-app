import 'package:flutter/material.dart';
import 'package:my_movie_app/data_dummy/filmData.dart';

class MobileDetailScreen extends StatelessWidget {
  final FilmData data;
  const MobileDetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Stack(
                children: [
                  //background
                  Image.asset(data.imagebg_path),

                  //background color
                  Positioned.fill(
                      child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(0.3),
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  )),

                  //back button
                  Positioned(
                    top: 20,
                    left: 16,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Positioned(
                      bottom: 1,
                      right: 0,
                      left: 0,
                      child: Center(
                        child: Image.asset(
                            width: 180, height: 180, data.image_path),
                      ))
                ],
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10), // Add some space at the top
              // Movie title
              Text(
                data.tittle,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              // Movie synopsis
              const Text(
                "Synopsis :",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  data.synopsis,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Additional details
              Text(
                'Director:  ${data.director}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Release Date:  ${data.release_date}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
