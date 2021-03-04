import 'package:dogs/model/dog.dart';
import 'package:dogs/page/page_model/base_model.dart';
import 'package:dogs/service/dog_service.dart';

class HomePageModel extends BaseModel {
  DogService _dogService;
  HomePageModel({DogService dogService}) : _dogService = dogService;

  List<Dog> get dogs => _dogService.dogs;

  Future init() async {
    setBusy(true);
    await _dogService.fetchDog();
    setBusy(false);
  }

  Future addDog() async {
    setBusy(true);
    await _dogService.fetchDog();
    setBusy(false);
  }
}