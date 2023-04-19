
enum Color { red, green, blue }


enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  bool get isTwoWheeled => this == Vehicle.bicycle;

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}

enum TestEnum {
  car(tires: 4, passengers: 5),
  bus(tires: 6, passengers: 50),
  bicycle(tires: 2, passengers: 1);

  const TestEnum({
    required this.tires,
    required this.passengers,
  });

  final int tires;
  final int passengers;


  static TestEnum findTestEnum(String value){
    return TestEnum.values.where((element) => element.name == value).first;
  }

}


void main() {

  var enum1 = TestEnum.findTestEnum("car");

  print(enum1.passengers);


}