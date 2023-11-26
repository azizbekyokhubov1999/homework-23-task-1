import 'dart:convert';


List<Person> personListFromData(String data) => List<Person>.from(jsonDecode(data).map((e) => Person.fromJson(e)));
class Address {
  late String city;
  late String zipCode;
  Address.fromJson(Map<String, dynamic> json){
    city = json["city"];
    zipCode = json["zipCode"];
  }

}
class Person {
  late String name;
  late int age;
  late bool isStudent;
  late List<int> grades;
  late Address address;


  Person.fromJson(Map<String, dynamic> json){
    name = json["name"];
    age = json["age"];
    isStudent = json["isStudent"];
    grades = List<int>.from(json["grades"].map((e) => (e)));
    address = Address.fromJson(json["address"]);
  }
}