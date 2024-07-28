import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('images'),
      ),
      body: Container(
        height: 250,
        width: 300,
        //child: cashednetworkImages(imageUrl: your urls),
        //placeholder: (context, url)=>Center(child: CircleProgressIndicator(),
        //errorWidget: (context, url, error)=> Icon(Icons.error),)
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 10.0)
            ],
            image: const DecorationImage(
              image: AssetImage(
                'assets/assets/jake-hailstone-wP0pqxZmRmo-unsplash.jpg',
              ),
              fit: BoxFit.cover,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
