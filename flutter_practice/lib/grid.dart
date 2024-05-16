import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/product_item.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: 
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       ProductItem(name: 'Fast Food', price: '80', link: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWII5VmI1AO097wYLMkvmpR-DuaXXOLrltA7bZrr66Bg&s'),
                       ProductItem(name: 'Coffee', price: '20', link: 'https://img.freepik.com/free-photo/fresh-coffee-steams-wooden-table-close-up-generative-ai_188544-8923.jpg')
                    ],
                
                  )
                ),
              
              SizedBox(
                height: 20,
              ),

               Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: 
                const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                  ],
              
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}