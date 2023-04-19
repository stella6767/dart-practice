import 'package:dart_start/dart_start.dart' as dart_start;

/**
 * Dart language start
 *
 * https://dart.dev/language/variables
 */



void main(List<String> arguments) {

  var name = "dart_start"; //타입 추론
  String name2 = "dart_start2";

  int number1 = 1;
  double number2 = 2.00; //실수
  bool isTrue = false;

  print(isTrue.runtimeType);

  Object bob = 'Bob';

  dynamic name3 = "dart_start3";
  name3 = 1;

  print('Hello world: ${dart_start.calculate()}!');
  print('bob=>$bob');

  int? lineCount; //nuallbae Default value = null
  assert(lineCount == null);

  int lineCount2;
  //print("lineCount2=>$lineCount2");


  late String description;
  description = 'Feijoada!';
  print(description);

  final name5 = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';

  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere

  var foo = const [];
  final bar1 = const [];
  const baz = []; // Equivalent to `const []`


  //spread operators
  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.


}








