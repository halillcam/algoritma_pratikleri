import 'package:dart_application_1/algorithms/kisisel_kitaplik/datas/book_datas.dart';
import 'package:dart_application_1/algorithms/kisisel_kitaplik/models/book_model.dart';
import "dart:io";

class Procresses {
  final BookDatas myBooks = BookDatas();

  String readString(String label) {
    stdout.write("$label: ");
    return stdin.readLineSync()!;
  }

  int readInt(String label) {
    stdout.write("$label: ");
    return int.parse(stdin.readLineSync()!);
  }

  void addBook() async {
    print("---- Kitap ekleme bölümü ----\n");
    int id = readInt("id");
    String bookName = readString("Kitap Adi");
    String bookWriter = readString("Kitabın Yazari");
    int sayfaSayisi = readInt("sayfaSayisi");

    myBooks.addBook(BookModel(id, bookName, bookWriter, sayfaSayisi));
    print("Kitap eklendi!\n");
    showBooks(); // Kitap ekledikten sonra mevcut kitapları göster
  }

  void deleteBook() {
    print("----- Kitap Silme bölümü -----");
    showBooks(short: true); // Silmeden önce id ve isimleri göster
    int id = readInt("Silmek istediğiniz kitabın id'si");

    try {
      myBooks.deleteBook(id);
      print("Kitap silindi veya yoksa işlem yapılmadı.\n");
    } catch (e) {
      print("Kitap Silinemedi");
    }
  }

  void showBooks({bool short = false}) {
    // Sadece ID ve isim gösterir
    print("Mevcut kitaplar:");
    for (var kitap in myBooks.getBookList()) {
      if (short) {
        print("ID: ${kitap.kitapID} - İsim: ${kitap.kitapIsmi}");
      } else {
        print(
          "Kitap ismi : ${kitap.kitapIsmi} Yazar : ${kitap.kitapYazar}, Sayfa Sayisi : ${kitap.sayfaSayisi}, ID: ${kitap.kitapID}",
        );
      }
    }
  }

  // kitapları gösterme.
  void userProcress() {
    print("Hosgeldin !");
    while (true) {
      print("\nKitaplarını görmek için 1 yaz");
      print("Kitap eklemek için 99 yaz ");
      print("Kitap silmek için 2 yaz ");
      print("Çıkmak için 0 yaz");

      stdout.write("Seçiminiz: ");
      String? secim = stdin.readLineSync();

      if (secim == "1") {
        showBooks();
      } else if (secim == "99") {
        try {
          addBook();
        } catch (e) {
          print("Hata Kitap Eklenemedi $e");
        }
      } else if (secim == "2") {
        try {
          deleteBook();
        } catch (e) {
          print("Hata Kitap Silinemedi $e");
        }
      } else if (secim == "0") {
        print("Çıkılıyor...");
        break;
      } else {
        print("Geçersiz seçim!");
      }
    }
  }
}
