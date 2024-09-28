class Book {
  final String title;
  final String author;
  final int publicationYear;
  bool isAvailable;

  Book({
    required this.title,
    required this.author,
    required this.publicationYear,
    this.isAvailable = true,
  });

  void borrow() {
    if (isAvailable) {
      isAvailable = false;
      print("Borrowed: $title by $author");
    } else {
      print("Book is not available for borrowing.");
    }
  }

  void returnBook() {
    isAvailable = true;
    print("Returned: $title by $author");
  }
}