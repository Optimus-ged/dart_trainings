import 'dart:async';

StreamController<String> _controller = StreamController<String>.broadcast();
Stream<String> get out => _controller.stream;

void main() {
  validateNumber("+243811945367");
}

void add() {
  _controller.sink.add("aaaaa dd");
}

void validateNumber(String num) {
  String val = num.substring(4, 6);
  List<String> data = ["999", "97", "84", "81", "85", "89", "99"];
  if (!data.every((v) => v != val)) {
    print("valide");
  } else {
    print("invalide");
  }
}
