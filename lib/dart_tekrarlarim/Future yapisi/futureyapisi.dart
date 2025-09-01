void main(List<String> args) {
  print("1");
  Future<void> gecikmeliGeliyom() async {
    await Future.delayed(Duration(seconds: 2));
    print("ben gecikmeli gelmişem ağam");
  }

  gecikmeliGeliyom();

  print("3");
}
