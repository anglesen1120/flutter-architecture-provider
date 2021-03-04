import 'package:dogs/page/base_widget.dart';
import 'package:dogs/page/page_model/home_page_model.dart';
import 'package:dogs/service/dog_service.dart';
import 'package:dogs/widget/dog_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageModel _homePageModel;

  @override
  void initState() {
    _homePageModel = new HomePageModel(dogService: Provider.of<DogService>(context, listen: false));
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomePageModel>(
      model: _homePageModel,
      onModelReady: (model) async => await model.init(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(title: Text("Dogs"), actions: [
            IconButton(icon: Icon(Icons.add, color: Colors.white,), onPressed: () => _homePageModel.addDog())
          ],),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
            model.busy ? Container(height: 2, child: LinearProgressIndicator(backgroundColor: Colors.orange,),) : Container(height: 2,),
            _homePageModel.dogs.length > 0 ? Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: _homePageModel.dogs.length,
                itemBuilder: (context, i) {
                  return ListTile(title: DogWidget(dog: _homePageModel.dogs[i]));
                }),
            ) : Container()
          ],),
        );
      }
    );
  }
}
