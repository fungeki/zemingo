import 'dart:async';

abstract class UseCase<Data, Params>{
  final _controller = StreamController<Data>.broadcast();
  Stream<Data> get stream => _controller.stream;

  void add(Data obj){
    if (_controller.isClosed) return;
    _controller.sink.add(obj);
  }

  void close(){
    _controller.close();
  }
}

class NoParams{}