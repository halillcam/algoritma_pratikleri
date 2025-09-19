class StreamOrnek {
  // kargo örneği
  Stream<String> kargolar() async* {
    // 1. kutu
    await Future.delayed(Duration(seconds: 1));
    yield "Kutu 1";

    // 2. kutu
    await Future.delayed(Duration(seconds: 1));
    yield "Kutu 2";

    // 3. kutu
    await Future.delayed(Duration(seconds: 1));
    yield "Kutu 3";

    // 4. kutu hasarlı → hata event'i
    await Future.delayed(Duration(seconds: 1));
    yield "Kutu 4 hasarlı yüklendi";
  }

  void kargoListener() {
    kargolar().listen((kargo) {
      if (kargo.contains("hasarlı")) {
        print("Hasarlı Kargo tespit edildi");
      } else {
        print("$kargo teslim edildi");
      }
    }, onDone: () => print("Teslimat işlemleri bitti"));
  }
}

void main(List<String> args) {
  StreamOrnek myStream = StreamOrnek();
  myStream.kargoListener();
}
