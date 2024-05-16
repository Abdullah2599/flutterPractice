import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.name,required this.price, required this.link});

final String name;
final String price;
final String link;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 250,
      child: Card(
        elevation: 30,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(link),
            ),
            Padding(padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('\$$price',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            ),
            SizedBox(
              width: 180,
              height: 40,
              child: ElevatedButton(
                style: const ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.black)),
                onPressed: (){},
                child: const Text('Add To Cart',
                style: TextStyle(
                  color: Colors.white,
                ),
                )
                
                ),
            )
          ],
        ),
      ),
    );
  }
}