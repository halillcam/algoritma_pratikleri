class Ehliyet {
  final String name;
  final int yas;

  Ehliyet(this.name, this.yas);

  void hesapla() {
    yas >= 18 ? print("Ehliyet alabilir") : print("Ehliyet alamaz");
  }
}

void main(List<String> args) {
  Ehliyet ehliyet = Ehliyet("halil", 20);
  ehliyet.hesapla();
}
