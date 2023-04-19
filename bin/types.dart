/**
 *
 *  내장타입
 *
 *  Numbers (int, double)
    Strings (String)
    Booleans (bool)
    Lists (List, also known as arrays)
    Sets (Set)
    Maps (Map)
    Runes (Runes; often replaced by the characters API)
    Symbols (Symbol)
    The value null (Null)

    Object: The superclass of all Dart classes except Null.
    Enum: The superclass of all enums.
    Future and Stream: Used in asynchrony support.
    Iterable: Used in for-in loops and in synchronous generator functions.
    Never: Indicates that an expression can never successfully finish evaluating. Most often used for functions that always throw an exception.
    dynamic: Indicates that you want to disable static checking. Usually you should use Object or Object? instead.
    void: Indicates that a value is never used. Often used as a return type.
 */

typedef IntList = List<int>;

typedef Compare<T> = int Function(T a, T b);

int sort(int a, int b) => a - b;


void main(){
  
  IntList il = [1, 2, 3];
  assert(sort is Compare<int>); // True!

}