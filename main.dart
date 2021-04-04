void main() {
  listening();
}

void listening() async {
  // getNumbers()
  //     .expand((data) => [data, data * 5])
  //     .listen((data) => print("Voici ==> $data"));

  // getNumbers()
  // .map((i) => (i * 5))
  // .listen((data) => print(data));

  getNumbers().map((i) {
    if (i % 2 == 0) {
      return i * 2;
    } else {
      return i - 1;
    }
  }).listen((data) {
    print(data);
  });
}

Stream<int> getNumbers() async* {
  for (var i = 1; i <= 3; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}
