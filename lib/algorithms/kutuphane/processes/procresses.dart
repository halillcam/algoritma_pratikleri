import 'package:dart_application_1/algorithms/kutuphane/datas/book_datas.dart';
import 'package:dart_application_1/algorithms/kutuphane/models/book_model.dart';
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

  void addBook() {
    print("---- Kitap ekleme bölümü ----\n");
    int id = readInt("id");
    String bookName = readString("Kitap Adi");
    String bookWriter = readString("Kitabın Yazari");
    int baskiYear = readInt("Baskı yılı");
    int baskiAdet = readInt("Baskı adedi");

    myBooks.addBook(BookModel(id, bookName, bookWriter, baskiYear, baskiAdet));
    print("Kitap eklendi!");
  }

  // kitapları gösterme.
  void userProcress() {
    print("Hosgeldin !");
    print("Kitaplarını görmek için - 1 yaz");
    print("Kitap eklemek için 99 yaz ");

    stdout.write("Seçiminiz: ");
    String? secim = stdin.readLineSync();

    if (secim == "1") {
      print("Mevcut kitaplar:");
      for (var kitap in myBooks.getBookList()) {
        print(
          "${kitap.kitapID} - ${kitap.kitapIsmi} (${kitap.kitapYazar}), ${kitap.baskiYili}, Adet: ${kitap.baskiAdet}",
        );
      }
    } else if (secim == "99") {
      addBook();
    } else {
      print("Geçersiz seçim!");
    }
  }
}
