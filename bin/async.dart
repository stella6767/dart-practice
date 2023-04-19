import 'dart:io';
import 'dart:isolate';

/**
 * 다트 코드는 단일 thread 실행
 *
 * future는 async 코드의 결과를 나타낸다.
 *
 */


Future<String> doSomething(){
  return Future.delayed( Duration(seconds:2) , ()=>"result");
}

void doSomethingASync() async {

  var result = await doSomething();
  print('result: $result');

}


void main(){
  String currentThreadName = Isolate.current.toString();
  print('작업 시작');

  //독립적인 스레드.. 병렬처리 용도, 주로 리턴필요가 없는 함수를 실행할 때 쓰면 되겠다..
  //Isolate.spawn((message) { }, message)


  //doSomethingSync();
  doSomethingASync();

  print('작업 끝');
  print('Current thread name: $currentThreadName');

}

