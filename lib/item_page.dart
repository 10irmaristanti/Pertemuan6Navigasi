import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:belanja/item.dart';

class ItemPage extends StatelessWidget{
  final Item newItem;
  ItemPage({
    Key key,
    this.newItem,
  }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title:  Text("Detail Gambar"),
          centerTitle: true,
        ),
        body:
        Column(
          children: [
            Divider(),
            Container(child: newItem.image,),
            Divider(),
            Container(
              alignment: Alignment.center,
              child: Text(
                newItem.name + " : " + newItem.price.toString(),
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
)
      ),
          ],
        )
    );
  }
}