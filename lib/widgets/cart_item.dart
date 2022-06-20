import 'package:flutter/material.dart';
import '../models/cart_data.dart';

class CartItemWidget extends StatefulWidget {
  final CartItemModel item;
  const CartItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  int itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Image.asset(
            widget.item.imagePath,
            width: 40,
            height: 40,
          )),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.item.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(widget.item.price,
                    style: TextStyle(
                        color: Color(0xffFF324B),
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                InkWell(
                  onTap: (() {
                    setState(() {
                      itemCount++;
                    });
                  }),
                  child: Image.asset(
                    "assets/images/add_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "$itemCount",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (itemCount > 0) itemCount--;
                    });
                  },
                  child: Image.asset(
                    "assets/images/remove_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
