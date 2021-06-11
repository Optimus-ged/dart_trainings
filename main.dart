import 'dart:async';

StreamController<String> _controller = StreamController<String>.broadcast();
Stream<String> get out => _controller.stream;

void main() {
  // out.listen((data) {
  //   print(data);
  // });

  // out.listen((data) {
  //   print(data.replaceAll("a", "A"));
  // });

  // int index = 4;
  // bool isPair = (index % 2 == 0);
  // print("Index $index");
  // print("Le nombre est pair $isPair");

  // browseList();
  // print(browseList());

  validateNumber("80");
}

void add() {
  _controller.sink.add("aaaaa dd");
}

int browseList() {
  int status = 0;
  List data = [1, 2, 3, 4];
  if (data.contains(10)) {
    status = 200;
  }
  print(data);
  return status;
}

void validateNumber(String num) {
  List<String> data = ["999", "97", "84", "81", "85", "89"];
  print(data.every((v) => v != num));
  if (data.every((v) => v != num)) {
    print("$num Ce numero est invalide pour la RDC");
  } else {
    print("$num Ce numero est valide a 100%");
  }
}
