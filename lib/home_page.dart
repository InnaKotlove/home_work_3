import 'package:flutter/material.dart';

import 'my_photos.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Information about me',
          style: TextStyle(color: Colors.purpleAccent),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(
                    'assets/images/240066867_3088397194721408_9086269848787335961_n.jpg'),
              ),
              const SizedBox(height: 10),
              const Text(
                'Inna Kotlovianova',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Junior flutter developer',
                style: TextStyle(color: Colors.purpleAccent),
              ),
              const SizedBox(height: 10),
              Text(
                'My favorite hobby is horse riding. Wherever I have the opportunity, I try not to forget about it. I have loved horses all my life and have been riding since childhood. I have always dreamed of living in Europe - now I have such an opportunity, I have been living in the Netherlands for 2 years. But my heart is always in Ukraine.',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyPhotos()));
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.image_outlined),
                      SizedBox(width: 10),
                      Text('My photos')
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
