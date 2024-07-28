import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("rows and coulmns"),
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 60, width: 60, color: Colors.red),
            Container(height: 60, width: 60, color: Colors.blue),
            Container(height: 60, width: 60, color: Colors.green),
            Container(height: 60, width: 60, color: Colors.purple),
            Container(height: 60, width: 60, color: Colors.lime),
          ],
        ),

        // child: Row(     //YOU CAN WRAP for handle long text
        //  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,]
        //  //direction: Axis.vertical,
        //  //alignment: WrapAlignment.center,
        //   children: [
        //     Container(height: 60, width: 60, color: Colors.red),
        //     Container(height: 60, width: 60, color: Colors.blue),
        //     Container(height: 60, width: 60, color: Colors.green),
        //     Container(height: 60, width: 60, color: Colors.purple),
        //     Container(height: 60, width: 60, color: Colors.lime),
        //   ],
        // ),
      ),
    );
  }
}
