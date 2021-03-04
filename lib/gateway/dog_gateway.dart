
import 'package:dio/dio.dart';
import 'package:dogs/model/dog.dart';
const int CONNECTION_TIMEOUT = 30 * 1000;

class DogGateway {
  Future<Dog> fetch() async {
    Dio dogClient = new Dio(BaseOptions(connectTimeout: CONNECTION_TIMEOUT, receiveTimeout: CONNECTION_TIMEOUT));
    var response = await dogClient.getUri(Uri.https('dog.ceo', 'api/breeds/image/random'));
    return Dog.fromJson(response.data);
  }
}