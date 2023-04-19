import 'dart:async';

void main(){

  final controller = StreamController();

  final stream = controller.stream;

  final streamListner = stream.listen((event) {
    print('event: $event' );
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(1);
  


}