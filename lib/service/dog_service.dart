import 'package:dogs/gateway/dog_gateway.dart';
import 'package:dogs/model/dog.dart';

class DogService {

  static final DogService _singleton = DogService._internal();
  DogService._internal();

  DogGateway _dogGateway;

  factory DogService({DogGateway dogGateway}) {
    _singleton._dogGateway = dogGateway;
    return _singleton;
  }

  List<Dog> dogs = [];

  Future fetchDog() async {
    Dog dog = await _dogGateway.fetch();
    dogs.add(dog);
  }

}