import 'package:dart_application_1/dart_tekrarlarim/kisisel_kitaplik/models/book_model.dart';

class BookDatas {
  final List<BookModel> _books = [];

  void addBook(BookModel book) {
    _books.add(book);
  }

  List<BookModel> getBookList() {
    return List.unmodifiable(_books);
  }

  void deleteBook(int id) {
    _books.removeWhere((book) => book.kitapID == id);
  }
}
