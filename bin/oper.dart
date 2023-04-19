



void main(){
  var a = 0;
  var b = 0;

  // a++;
  // a + b;
  // a = b;
  // a == b;
  // c ? a : b;
  // a is T


  final value = 0x22;
  final bitmask = 0x0f;

  assert((value & bitmask) == 0x02); // AND
  assert((value & ~bitmask) == 0x20); // AND NOT
  assert((value | bitmask) == 0x2f); // OR
  assert((value ^ bitmask) == 0x2d); // XOR
  assert((value << 4) == 0x220); // Shift left
  assert((value >> 4) == 0x02); // Shift right
  assert((value >>> 4) == 0x02); // Unsigned shift right
  assert((-value >> 4) == -0x03); // Shift right
  assert((-value >>> 4) > 0); // Unsigned shift right

  //Type test operators
  //as ,  is ,  is!

  // Assign value to a
  a = value;
// Assign value to b if b is null; otherwise, b stays the same
  b ??= value;


  /**
   * condition ? expr1 : expr2
      If condition is true, evaluates expr1 (and returns its value); otherwise, evaluates and returns the value of expr2.
      expr1 ?? expr2
      If expr1 is non-null, returns its value; otherwise, evaluates and returns the value of expr2.
   */

  var sb = StringBuffer();
  /*
    Cascade notation
    Cascades (.., ?..)
  */


  /**
   *  () 	   Function application	Represents a function call
      [] 	   Subscript access	Represents a call to the overridable [] operator; example: fooList[1] passes the int 1 to fooList to access the element at index 1
      ?[]	   Conditional subscript access	Like [], but the leftmost operand can be null; example: fooList?[1] passes the int 1 to fooList to access the element at index 1 unless fooList is null (in which case the expression evaluates to null)
      .	     Member access	Refers to a property of an expression; example: foo.bar selects property bar from expression foo
      ?. 	   Conditional member access	Like ., but the leftmost operand can be null; example: foo?.bar selects property bar from expression foo unless foo is null (in which case the value of foo?.bar is null)
      !	     Null assertion operator	Casts an expression to its underlying non-nullable type, throwing a runtime exception if the cast fails; example: foo!.bar asserts foo is non-null and selects the property bar, unless foo is null in which case a runtime exception is thrown
   */

}
