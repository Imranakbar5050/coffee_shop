import 'package:coffee_shop/common/utils/app_images.dart';
import 'package:coffee_shop/res/texts/app_text.dart';
import 'package:coffee_shop/views/homeScreen/widgets/coffee_card.dart';

import 'package:flutter/material.dart';
import '../bottomNavBar/custom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> coffeeTypes = [
    "All",
    "Cappuccino",
    "Espresso",
    "Americano",
    "Macchiato"
  ];
  int selectedIndex = 0;
  int _currentBottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 240),
            child: IconButton(
              icon: const Icon(
                Icons.grid_on,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(AppImages.profile_image),
              radius: 20,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              AppText.text1,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),


            Container(
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: AppText.text2,
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 14.0),
                ),
              ),
            ),




            SizedBox(height: 20),

            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeTypes.length,
                itemBuilder: (context, index) {
                  final isSelected = index == selectedIndex;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            coffeeTypes[index],
                            style: TextStyle(
                              color: isSelected
                                  ? Color(0xFFFF9F43)
                                  : Colors.grey,
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 4),
                          Container(
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Color(0xFFFF9F43)
                                  : Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),


            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    SizedBox(
                      height: 240,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          CoffeeCard(
                            imagePath: 'assets/images/coffee_image_2.png',
                            name: 'Cappuccino',
                            description: 'With Steamed Milk',
                            price: 4.20,
                            rating: 4.5,
                          ),
                          CoffeeCard(
                            imagePath: 'assets/images/coffee_image_1.png',
                            name: 'Cappuccino',
                            description: 'With Foam',
                            price: 4.20,
                            rating: 4.2,
                          ),
                          CoffeeCard(
                            imagePath: 'assets/images/coffee_image_3.png',
                            name: 'Cappuccino',
                            description: 'With Steamed Milk',
                            price: 4.20,
                            rating: 4.2,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Coffee beans',
                      style: TextStyle(
                        color: Colors.white, // or any color you prefer
                        fontSize: 18,        // adjust size as needed
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 10),
                    SizedBox(
                      height: 240,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          CoffeeCard(
                            imagePath: 'assets/images/coffee_image_4.png',
                            name: 'Robusta Beans',
                            description: 'With Steamed Milk',
                            price: 4.20,
                            rating: 4.5,
                          ),
                          CoffeeCard(
                            imagePath: 'assets/images/coffee_image_4.png',
                            name: 'Cappuccino',
                            description: 'With Foam',
                            price: 4.20,
                            rating: 4.2,
                          ),
                          CoffeeCard(
                            imagePath: 'assets/images/coffee_image_4.png',
                            name: 'Cappuccino',
                            description: 'With Steamed Milk',
                            price: 4.20,
                            rating: 4.2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),




          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(
        selectedIndex: _currentBottomIndex,
        onItemTapped: (int index) {
          setState(() {
            _currentBottomIndex = index;
          });
        },
      ),
    );
  }
}
