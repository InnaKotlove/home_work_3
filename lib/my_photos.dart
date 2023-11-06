import 'package:flutter/material.dart';
import 'item_photo.dart';

class MyPhotos extends StatelessWidget {
  final List<String> images = [
    'assets/images/003.jpg',
    'assets/images/004.jpg',
    'assets/images/005.jpg',
    'assets/images/006.jpg',
  ];

  MyPhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My photos'),
      ),
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ItemPhoto(
                            image: images[index],
                          ),
                  ),
                );
              },
              child: Image.asset(
                images[index],
                fit: BoxFit.cover,
              ));
        },
      ),
    );
  }
}
