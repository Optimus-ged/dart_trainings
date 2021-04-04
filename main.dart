void main() {
  listen();
}

void listen() async {
  // getNumbers().listen((data) {
  //   print(data);
  // });

  var sum = 0;
  getNumbers().listen((data) {
    sum += data;
    print(data);
  }).onDone(() {
    print("Voici le total $sum");
  });

  print("La longueur de notre Stream est de ${await getNumbers().length}");
}

Stream<int> getNumbers() async* {
  for (var x = 1; x <= 3; x++) {
    yield x;
    await Future.delayed(Duration(seconds: 1));
  }
}
