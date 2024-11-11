class FilmData {
  String tittle;
  String release_date;
  String image_path;
  String imagebg_path;
  String director;
  String synopsis;

  FilmData(
      {required this.tittle,
      required this.release_date,
      required this.imagebg_path,
      required this.director,
      required this.synopsis,
      required this.image_path});
}

var dataFilm = [
  FilmData(
      tittle: 'The Boys',
      release_date: '2019',
      image_path: 'assets/film1.jpg',
      imagebg_path: 'assets/bfilm1.webp',
      director: 'Eric Kripke',
      synopsis:
          'A group of vigilantes known informally as “The Boys” set out to take down corrupt superheroes with no more than blue-collar grit and a willingness to fight dirty.'),
  FilmData(
      tittle: 'Inside Out 2',
      release_date: '2024',
      image_path: 'assets/film2.jpg',
      imagebg_path: 'assets/bfilm2.webp',
      director: 'Kelsey Mann',
      synopsis:
          'Teenager Rileys mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who’ve long been running a successful operation by all accounts, aren’t sure how to feel when Anxiety shows up. And it looks like she is not alone.'),
  FilmData(
      tittle: 'Hit Man',
      release_date: '2024',
      image_path: 'assets/film3.jpg',
      imagebg_path: 'assets/bfilm3.webp',
      director: 'Richard Linklater',
      synopsis:
          'A mild-mannered professor moonlighting as a fake hit man in police stings ignites a chain reaction of trouble when he falls for a potential client.'),
];
