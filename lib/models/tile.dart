class Tile {
  final String id;
  final String title;
  final String description;
  final String alt;
  final String imagePath;
  final String category;
  bool isFavorite;

  Tile({
    required this.id,
    required this.title,
    required this.description,
    required this.alt,
    required this.imagePath,
    required this.category,
    this.isFavorite = false,
  });
}
