import 'Book.dart';

class Library {
  final List<Book> books;

  Library() : books = [];

  void addBook(Book book) {
    books.add(book);
    print("Added book: ${book.title} by ${book.author}");
  }

  void removeBook(String title) {
    books.removeWhere((book) => book.title == title);
    print("Removed book: $title");
  }

  searchBookByTitle(String title) {
    return books.where((book) => book.title.toLowerCase().contains(title.toLowerCase())).toList();
  }

  List<Book> searchBookByAuthor(String author) {
    return books.where((book) => book.author.toLowerCase().contains(author.toLowerCase())).toList();
  }

  void displayAvailableBooks() {
    if (books.isEmpty) {
      print("No books available in the library.");
    } else {
      print("Available Books:");
      books.forEach((book) {
        int counter = 1;  // Create a counter variable inside the callback
        if (book.isAvailable) {
          print("${counter++}. ${book.title} by ${book.author}");
        }
        counter++;  // Increment the counter for the next book (optional)
      });
    }
  }
}