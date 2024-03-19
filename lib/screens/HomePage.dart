import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:onkar_project/screens/facialPage.dart';
import 'package:onkar_project/screens/massageTharapy.dart';
import 'package:onkar_project/screens/spaPage.dart';

import 'hairStyle.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your App'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              'https://images.squarespace-cdn.com/content/v1/5d6b3013248be40001de4764/1567588578206-MZRQS3F3PRZJ9AZA2103/get-a-facial.png?format=1500w',
              'https://static.wixstatic.com/media/e1560f_08ad9087f6c945e4a99e2398875e82f5~mv2.jpg/v1/fill/w_2500,h_1666,al_c/e1560f_08ad9087f6c945e4a99e2398875e82f5~mv2.jpg',
              'https://tse3.mm.bing.net/th?id=OIP.5PtxyJQ0LLM0M_8d7u8sRgHaE8&pid=Api&P=0&h=180',
            ].map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Card(
                    color: Colors.red,
                    child: ListTile(
                      leading: const Icon(Icons.cut),
                      title: const Text('Hair Cutting'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HairCuttingPage()),
                        );
                      },
                    ),
                  ),
                  Card(
                    color: Colors.green,
                    child: ListTile(
                      leading: const Icon(Icons.accessibility_new_sharp),
                      title: const Text('Massage'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MassageTherapyPage()),
                        );
                      },
                    ),
                  ),
                  Card(
                    color: Colors.blue,
                    child: ListTile(
                      leading: const Icon(Icons.face),
                      title: const Text('Facial'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FacialPage()),
                        );
                      },
                    ),
                  ),
                  Card(
                    color: Colors.orange,
                    child: ListTile(
                      leading: const Icon(Icons.spa),
                      title: const Text('Spa'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SpaPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class HairCuttingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hair Cutting Page'),
//       ),
//       body: Center(
//         child: Text('Hair Cutting Content'),
//       ),
//     );
//   }
// }
