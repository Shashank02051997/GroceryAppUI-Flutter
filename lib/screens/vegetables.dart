import 'package:flutter/material.dart';
import '../models/vegetable_data.dart';
import '../widgets/vegetable_card.dart';

class VegetablesScreen extends StatelessWidget {
  const VegetablesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Vegetables",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Image.asset(
            "assets/images/back_icon.png",
            scale: 2.2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            mainAxisExtent: 225,
          ),
          itemBuilder: (context, index) {
            return VegetableCardWidget(
              imagePath: VegetableItemModel.vegetableItemList[index].imagePath,
              name: VegetableItemModel.vegetableItemList[index].name,
              price: VegetableItemModel.vegetableItemList[index].price,
              onTapCallback: () {},
            );
          },
          itemCount: VegetableItemModel.vegetableItemList.length,
        ),
      ),
    );
  }
}
