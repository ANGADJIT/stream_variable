library stream_variable;

import 'dart:async';

class StreamVariable<T> {
  //* data to be streamed
  late T _variable;

  //* getter for variabe
  T get getVariable => _variable;

  //* setter for variable
  set setVariable(T value) => _variable = value;

  //* stream pipe
  final _streamController = StreamController<T>();
  StreamSink<T> get variableSink => _streamController.sink;
  Stream<T> get variableStream => _streamController.stream;

  //* method for closing stream
  void disposeStream() {
    _streamController.close();
  }
}
