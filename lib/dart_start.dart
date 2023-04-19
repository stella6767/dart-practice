
int calculate() {
  return 6 * 7;
}

class Person {

  int _hp; //private

  Person(this._hp);

  int get hp => _hp;

  set hp(int value) {
    _hp = value;
  }

  //Does Dart support inner class? nope ㅠㅠ


}

class Human{
  int hp;
  Human(this.hp);
}
