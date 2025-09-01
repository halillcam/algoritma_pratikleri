class Database {
  late final String connection;
  Database() {
    print("Database Olusturuldu");
  }
  void request() {
    print("Baglanti istegi atildi");
  }

  void connect() {
    connection = "Database e giriş yapildi";
    print(connection);
  }
}

Future<void> main(List<String> args) async {
  Database db = Database();
  print("Henüz bağlantı yok.");
  await Future.delayed(Duration(seconds: 3));
  db.request();
  await Future.delayed(Duration(seconds: 2));
  db.connect();
}
