//익명 클래스..

//자바 같이 생성자 명시 안 했을 때 기본생성자 자동으로 만들어주는듯?
//

abstract class _Champion {

  final String name;
  final List<String> skillSet;

  _Champion(this.name, this.skillSet);

  _Champion.fromList(List values)
    : this.name = values[0],
      this.skillSet = values[1];

  void sayHi(){
    print('안녈하세요. 제 이름은 ${this.name} 입니다.');
  }
}


class Panteon implements _Champion, Queue {

  @override
  String get name => throw UnimplementedError();

  @override
  void sayHi() {
    // TODO: implement sayHi
  }

  @override
  List<String> get skillSet => throw UnimplementedError();

}

class Queue {
  static const initialCapacity = 16;
// ···
}

/**
 * 다트에는 따로 인터페이스가 문법적으로 정의되지는 않는다.
 * 하지만 인터페이스 역할이 abstract class, implements 해주면 된다. 인터페이스는 다중상속이 가능
 */


class Ari extends _Champion with Musical {

  final String _tail;

  Ari(this._tail, name, skillSet): super(
    name, skillSet
  );

  //기존에 이미 생성된 인스턴스가 있다면 return 하여 재사용한다.
  //하나의 클래스에서 하나의 인스턴스만 생성한다(싱글톤 패턴).
  //Factory constructors 에서는 this 에 접근할 수 없다.
  factory Ari.fromFactory(tail, name, skillSet) {
    return Ari(tail, name, skillSet);
  }

  //접근제한자 안 먹나?

  /**
   * 다트에서 private 맴버의 접근범위는 동일 클래스가 아니라 라이브러리 (자바 기준으로 패키지) 기준.
   */

  _sayMyTail(){
    print('내 꼬리 $_tail');
  }

  @override
  void sayHi(){
    super.sayHi();
    this._sayMyTail();
  }
}



class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}


mixin Musical {  //생성자 없는 클래스? 인스턴스화 될 수 없다.
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

mixin MusicalPerformer on Musical {
  // ...
}

void main() {

  //var champ1 = _Champion("10", ["Q"]);

  _Champion ari = Ari("붉은색꼬리", "10" , ["Q"]);
  _Champion ari2 = Ari("푸른꼬리", "10" , ["Q"]);
  ari.sayHi();
  print(ari == ari2);

  //print('${ari._tail}');

  var log = Logger.fromJson( {"name": "value"} );
  var log2 = Logger.fromJson( {"name": "value2"} );

  print(log == log2);
  //print(log.name);

  _Champion ari3 = Ari.fromFactory("붉은색꼬리", "10" , ["Q"]);
  _Champion ari4 = Ari.fromFactory("붉은색꼬리", "10" , ["Q"]);
  print(ari3 == ari4);



}


abstract class Event {
  void run();
}

class _AnonymousEvent implements Event {
  _AnonymousEvent({required run()}): _run = run;

  final void Function() _run;

  @override
  void run() => _run();
}

Event createAnonymousEvent() {
  return _AnonymousEvent(
    run: () => print('run'),
  );
}