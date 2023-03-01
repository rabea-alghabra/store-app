import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';

class Item extends StatefulWidget {
  static String id = 'item page';

  Item({Key? key}) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      //backgroundColor: Colors.deepPurpleAccent[400],
      appBar: AppBar(
        title: Text("Item Details"),
        backgroundColor: Colors.amber[800],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Colors.white,
              Colors.white70,
              // Colors.white54,
              // Colors.white30,
              // Colors.white12,
              Color.fromARGB(49, 209, 238, 247),
              // Colors.black54,
              // Colors.black87,
              Color.fromARGB(255, 34, 102, 158),
            ])),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image.network(
                  product.image,
                  //opacity: const AlwaysStoppedAnimation(0.8),
                  height: 170,
                  width: 170,
                ),
              ),
              Text(
                product.title,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(product.category,
                    style: TextStyle(
                      color: Color.fromARGB(255, 138, 29, 29),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                r'$' '${product.price.toString()}',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                product.description,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text(
                        "${product.rating?.rate}",
                        style: TextStyle(
                          // color: Colors.grey,
                          fontSize: 26,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Color.fromARGB(255, 218, 165, 6),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "${product.rating?.count}",
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                      Icon(
                        Icons.store,
                        size: 25,
                        color: Color.fromARGB(255, 146, 62, 6),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
