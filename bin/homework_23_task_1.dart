import 'package:homework_23_task_1/homework_23_task_1.dart' as homework_23_task_1;
import 'models/person.dart';
import 'package:http/http.dart';

import 'services/network_service.dart';
void main() async {
  String data = await NetworkService.getData(NetworkService.apiPerson);

  List<Person> list = personListFromData(data);

  list.forEach((element) {
    print(element.address.zipCode);
  });
}