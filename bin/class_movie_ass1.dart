class Movie {
  String title;
  String studio; // name of studio made a movie
  String rating; // It is the rating of movies and represented like that: “PG13”, “PG”

  // First constructor: Write a constructor for the class Movie which takes the title, studio, and rating.
  Movie(this.title, this.studio, this.rating);

  // Second constructor: Write another constructor for the class Movie which takes the title, and studio as parameters and sets the rating to the default value “PG”
  Movie.getRating(this.title, this.studio) {
    rating = "PG";
  }

  // Override toString method to print Movie objects
  @override
  String toString() {
    return 'Movie{title: $title, studio: $studio, rating: $rating}';
  }

  // getPG: Write this method that takes an array of base type Movie as its argument and returns a new array of only those movies in the input array that their rating contains “PG”
  static List<Movie> getPG(List<Movie> allMovies) {
    List<Movie> allMoviesSameRating = [];
    for (int i = 0; i < allMovies.length; i++) {
      if (allMovies[i].rating == "PG") allMoviesSameRating.add(allMovies[i]);
    }
    return allMoviesSameRating;
  }
}

void main() {
  List<Movie> allMovies = [
    Movie("spider man_1", "Magin Studio", "PG"),
    Movie("spider man_2", "Abdo Studio", "GG"),
    Movie("spider man_3", "Mostafa Studio", "PG"),
  ];

  List<Movie> pgMovies = Movie.getPG(allMovies);
  for(int i=0 ; i<pgMovies.length; i++){
    print(pgMovies[i]);
  }
  // for(var element in pgMovies){
  //   print(element);
  // }
  // for (var movie in pgMovies) {
  //   print(movie);
  // }
}
