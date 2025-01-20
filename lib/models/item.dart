class Item {
  final String id; // Document ID
  final String title;
  final String description;

  // Constructor
  Item({
    required this.id,
    required this.title,
    required this.description,
  });

  // Factory method to create an instance from JSON
  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['\$id'], // The unique ID provided by Appwrite
      title: json['title'] ?? '', // Fallback to an empty string if null
      description:
          json['description'] ?? '', // Fallback to an empty string if null
    );
  }

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      '\$id': id,
      'title': title,
      'description': description,
    };
  }
}
