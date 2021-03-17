import 'package:belanja/item_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Make Over', price: 150000, image : Image.network('https://cantikberkilau.com/wp-content/uploads/2019/02/Harga-Lipstik-Make-Over-Terbaru.jpg')),
    Item(name: 'Maybeline', price: 75000, image: Image.network('https://www.watsons.co.id/medias/zoom-extra1-83399.jpg?context=bWFzdGVyfHByb2R1Y3RJbWFnZS96b29tfDEzMjMzMHxpbWFnZS9qcGVnfHByb2R1Y3RJbWFnZS96b29tL2hmZS9oZDMvODk3ODk4NzgxMDg0Ni5qcGd8YzY3YTdkYzA2NDkwYjU3NDAwMjJhM2VjZjRkYmIxNDAxNzA4N2Q0NjE0YzdlNWMzM2YxZDc5YzY4OTIzMjY3ZA')),
    Item(name: 'Lip Cushion Emina', price: 45000, image : Image.network('https://id-test-11.slatic.net/p/283ab6eda096a0d5d2b3cca96f4cc23a.jpg')),
    Item(name: 'Hanasui', price: 25000, image: Image.network('https://id-test-11.slatic.net/p/540bc1802c16c59e4d495f8d17dc24ca.jpg'))
  ];
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
         appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Daftar Lipstik"),
         ),
         backgroundColor: Colors.white54,
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index){
            final item = items[index];
            return InkWell(
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => ItemPage(newItem: item)
                  ));
              },
                          child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        )
                        )
                    ],
                  ),
                ),
              ),
            );
          }
          ),
        )
      )
    );
  }
}