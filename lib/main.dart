import 'package:flutter/material.dart';
import 'package:shopping_app/productInfo.dart';

void main() {
  runApp( MaterialApp(
    home: MyApp() ,
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('Shopping App'),
      ),

      body: Container(
        padding: EdgeInsets.all(10),
        height: 200,

        child: Card(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Image.asset("images/shoes.png",
              width: 100,
                height: 100,
              ),
              Expanded(

                  child: Container(
                    padding: EdgeInsets.all(10),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Padding(padding: EdgeInsets.only(top: 5)),
                       Text("Product name"),
                       Text("Product Description"),
                       Text("price"),
                       ElevatedButton(
                         child: Text("Buy"),
                         onPressed: (){
                           Navigator.push(
                               context,
                             MaterialPageRoute(builder: (context) => productInfo())
                           );

                         },
                       )


                     ],

                   ),


                  )
              )

            ],





          ),
        ),
      ),
    );
  }
}





