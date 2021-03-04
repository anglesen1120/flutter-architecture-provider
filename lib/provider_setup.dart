
import 'package:dogs/gateway/dog_gateway.dart';
import 'package:dogs/service/dog_service.dart';
import 'package:dogs/service/navigation_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [...independentServices, ...dependentServices, ...uiConsumableProviders];

List<SingleChildWidget> independentServices = [
  Provider(create: (_) => NavigationService()),
  Provider(create: (_) => DogGateway()),
];
List<SingleChildWidget> dependentServices = [
  ProxyProvider<DogGateway, DogService>(
      update: (context, dogGateway, dogService) => DogService(dogGateway: dogGateway))
];
List<SingleChildWidget> uiConsumableProviders = [];

