import 'package:dogs/model/dog.dart';
import 'package:flutter/cupertino.dart';

class DogWidget extends StatelessWidget {
  final Dog dog;
  DogWidget({this.dog});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(dog.url),
        SizedBox(height: 4,),
        Center(child: Text(dog.name),),
        SizedBox(height: 10),
      ],
    );
  }
}
