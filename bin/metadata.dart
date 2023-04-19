
class Television {
  /// Use [turnOn] to turn the power on instead.
  @Deprecated('Use turnOn instead')
  void activate() {
    turnOn();
  }

  /// Turns the TV's power on.
  void turnOn() {
    print('turn on tv');
  }

}


class Todo {
  final String who;
  final String what;

  //defining a @Todo annotation that takes two arguments
  const Todo(this.who, this.what);
}




@Todo('Dash', 'Implement this function')
void doSomething() {
  print('Do something');
}