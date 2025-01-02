import 'package:flutter/material.dart';

// Main function to run the application
void main() => runApp(const MyApp());

/// The main application widget that wraps everything inside MaterialApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner
      home: FavoriteMoviesScreen(), // Sets the home screen
    );
  }
}

/// Home screen widget displaying favorite movies
class FavoriteMoviesScreen extends StatelessWidget {
  const FavoriteMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(), // Custom AppBar widget
      body: FavoriteMoviesList(), // Custom body widget to display movies
    );
  }
}

/// Builds a custom AppBar with a gradient background and icons
AppBar buildAppBar() {
  return AppBar(
    leading: const Icon(Icons.movie, color: Colors.white), // Movie icon on the left
    title: const Text(
      'Favorite Movies',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.favorite, color: Colors.white), // Favorite icon
        onPressed: () {
          // Placeholder for future favorite action
        },
      ),
    ],
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.purpleAccent], // Gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    ),
    elevation: 8, // Adds shadow for a raised effect
  );
}

/// Widget to display a list of favorite movies using ListView.builder
class FavoriteMoviesList extends StatelessWidget {
  FavoriteMoviesList({super.key});

  // List of movies with title and IMDb rating
  final List<Map<String, dynamic>> movies = [
    {"title": "Inception", "rating": 8.8},
    {"title": "The Dark Knight", "rating": 9.0},
    {"title": "Interstellar", "rating": 8.6},
    {"title": "The Matrix", "rating": 8.7},
    {"title": "Parasite", "rating": 8.6},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Title section with padding
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'My Favorite Movies',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // Expanded ListView to display movie cards
        Expanded(
          child: ListView.builder(
            itemCount: movies.length, // Number of items in the list
            itemBuilder: (context, index) {
              final movie = movies[index]; // Access the movie data

              return Card(
                color: Colors.blueAccent, // Set the background color of the card
                elevation: 4, // Adds shadow effect to the card
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30), // Padding for content inside ListTile
                  title: Text(
                    movie['title'], // Movie title
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'IMDb Rating: ${movie['rating']}', // Display IMDb rating
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
