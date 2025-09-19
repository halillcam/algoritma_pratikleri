class StreamYapisi {
  /*stream await gibi gecikmeli işlemler için kullanılıyor ama asıl kullanımı birden fazla gecikmeli işlemleri yapabilmesidir
  // stream içindeki yapılarımız birer event dir listener da dinleyicidir
   asıl işleri listener yapar yani biz işlemlerimizi Streamda tanımlar listener da o işlemleri yaptırır ve kontrol ettiririz

   Stream = üretim hattı (event’ler)

   Listener = tüketici (event’leri alıp işleyen)

   async* =  burdaki (*) ile stream olduğunu programa belli ediyoruz
   */

  //basketbol ornegi
  void basketbol() {
    Stream<String> atislar = Stream.fromIterable([
      "basket",
      "Kacti",
      "kacti",
      "basket",
    ]);
    atislar.listen((atis) {
      if (atis == "basket") {
        print("Sayi");
      } else {
        print("Sayi kacti");
      }
    }, onDone: () => print("Mac bitti toplamda  kadar top atildi"));
  }

  // yield return gibidir ama yield ben sana döndürüyorum ama yeni değerlerde gönderebilirim yani işim bitmedi diyor.
  // yield li basketbol örneği

  Stream<String> basketbolYield() async* {
    // 3 tane atış yapalım

    //atis 1
    await Future.delayed(Duration(seconds: 2));
    yield "Basket";

    //atis 2
    await Future.delayed(Duration(seconds: 2));
    yield "kacti";

    //atis 3
    await Future.delayed(Duration(seconds: 2));
    yield "kacti";
  }

  // dinleyici
  void basketListener() {
    basketbolYield().listen((atis) {
      if (atis == "Basket") {
        print("Sayi");
      } else {
        print("sayi kacti");
      }
    }, onDone: () => print("Mac bitti"));
  }
}

void main(List<String> args) {
  // basketbol ornegi
  StreamYapisi myStream = StreamYapisi();
  myStream.basketbol();
  myStream.basketListener();
}
