void main() {
  listening();
}

void listening() async {
  getNumbers()
      .expand((data) => [data, data * 5])
      .listen((data) => print("Voici ==> $data"));
}

Stream<int> getNumbers() async* {
  for (var i = 1; i <= 3; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}
