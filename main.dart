import 'dart:async';

StreamController<String> _controller = StreamController<String>.broadcast();
Stream<String> get out => _controller.stream;

void main() {
  out.listen((data) => {
        print(data),
      });

  out.listen((data) => {
        print(data.replaceAll("v", "x")),
      });

  add();
}

void add() {
  _controller.sink.add("bbbbvvv ged");
}
