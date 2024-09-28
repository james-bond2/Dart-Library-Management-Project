import 'Book.dart';
import 'Library.dart';

void main() {
  Library library = Library();

  // Add some books
  library.addBook(Book(title: 'The Lord of the Rings', author: 'J.R.R. Tolkien', publicationYear: 1954));
  library.addBook(Book(title: 'Pride and Prejudice', author: 'Jane Austen', publicationYear: 1813));
  library.addBook(Book(title: 'To Kill a Mockingbird', author: 'Harper Lee', publicationYear: 1960));

  print(library.searchBookByTitle('The Lord of the Rings'));
  library.displayAvailableBooks();
}