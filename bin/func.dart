


String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}


bool topLevel = true;


//dart는 리턴타입 정의안해도 됨

void hello(){
  print("hello");
}

//익명함수
Function hi = () {
  print("hi");
};

var add2 = (num) => num+1;


void highOrderFunc(Function(dynamic num) add2){
  var i = add2(10);
  print(i);
}


void main(){

  highOrderFunc(add2);

  const list = ['apples', 'bananas', 'oranges'];
  list.map((item) {
    return item.toUpperCase();
  }).forEach((item) {
    print('$item: ${item.length}');
  });

  //코틀린처럼 식이 표현식이 아닌가보네.. 까비..
  //var expression = if (topLevel) { "true"} else { "false"}



  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }

  addNumber(x: 1, y: 2, z: 3);
  addNumber(y: 2, x: 1);


}


//default parameters 불편하게 문법이 되있네, 마치 자스와 같이..
//void 생략가능

void addNumber({
required int x,
required int y,
int z = 10
}){
  print('x=>$x, y=>$y, z=>$z');
  print(x+y+z);
}


Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}