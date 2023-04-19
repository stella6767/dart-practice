/**
 * Extension methods
 *
 * 연산자 오버로딩..
 * covariant
 */

void main(){

  var strint1 = "11";

  strint1.parseInt();
  strint1.printItself();

}


extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }

  void printItself(){
    print(this);
  }

// ···
}