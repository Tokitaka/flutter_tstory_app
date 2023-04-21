import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomRecommendationCard extends StatefulWidget {
  const CustomRecommendationCard({super.key});

  @override
  State<CustomRecommendationCard> createState() => _CustomRecommendationCardState();
}

class _CustomRecommendationCardState extends State<CustomRecommendationCard> {
  int _currentIndex = 0;
  final List<Map<String, String>> _images = [
    {
      "image": "https://picsum.photos/200/300",
      "text": "Germany Said It Was Going To Legalise Weed. Europe Said Nope"
    },
    {
      "image": "https://picsum.photos/seed/picsum/200/300",
      "text": "Is Liverpool a 24-Hour City? I Tried to Find Out"
    },
    {
      "image": "https://picsum.photos/200/300/?blur",
      "text": "CYBER: What We Know about the Pentagon Leaks"
    },
    {
      "image": "https://picsum.photos/200/300?grayscale",
      "text": "Chuck Grassely and Mexico's Corrup Top Cop Both Want Dirt"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SliverToBoxAdapter(
      child: CarouselSlider(
        items: _images.map((image) {
          return Builder(builder: (context) {
            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(
                    image["image"]!,
                    fit: BoxFit.fill,
                    width: screenWidth * 0.7,
                    height: screenHeight * 0.5,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.center,
                        colors: [Colors.transparent, Colors.black.withOpacity(0.7)]),
                  ),
                  width: screenWidth * 0.7,
                  height: screenHeight * 0.5,

                ),
                GestureDetector(
                  onTap: () {},
                  child: OverflowBox(
                    maxWidth: screenWidth * 0.6,
                    child: Container(
                      height: 178,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        image["text"]!,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                        maxLines: 3,
                        textAlign: TextAlign.end,
                        softWrap: true,
                      ),
                    ),
                  ),
                ),
              ],
            );
          });
        }).toList(),
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            setState(
                  () {
                _currentIndex = index;
              },
            );
          },
        ),
      ),
    );
  }
}