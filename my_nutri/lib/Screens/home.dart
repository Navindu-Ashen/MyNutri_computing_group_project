import 'package:flutter/material.dart';
import 'package:my_nutri/Screens/book_page.dart';
import 'package:my_nutri/Screens/diet_plan.dart';
import 'package:my_nutri/Screens/profile_screen.dart';
import 'package:my_nutri/Screens/pros_and_cons_screen.dart';
import 'package:my_nutri/Widgets/top_recipes_carousel.dart';
import 'package:my_nutri/Widgets/trending_blogs_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;
  void _navigateToPage(int index) {
    setState(() {
      _currentTab = index;
    });
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BookScreen()),
        );
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfileScreen()),
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    "Hello Navindu!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 103, 203, 106),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 1),
                  child: Text(
                    "Find, track and eat healthy food.",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    height: 180,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 249, 231, 194),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          right: 190,
                          left: 10,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ReadMoreDetails(),
                                ),
                              );
                            },
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 193, 52, 41),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Center(
                                child: Text(
                                  "Read More...",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 19.5),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 50,
                          left: 20,
                          child: Text(
                            "The Pros and\nCons of fast food.",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 86, 41, 25),
                              letterSpacing: 0.2,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 20,
                          left: 20,
                          child: Text(
                            "Trending",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 193, 52, 41),
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15,
                          right: 8,
                          bottom: 15,
                          child: Image.asset(
                            "assets/06.png",
                            height: 175,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    height: 110,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(195, 18, 114, 167),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Positioned(
                          top: 35,
                          bottom: 35,
                          right: 15,
                          left: 200,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DietPlanPage(),
                                ),
                              );
                            },
                            child: Container(
                              height: 25,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Center(
                                child: Text(
                                  "Create Plan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(195, 18, 114, 167),
                                      fontSize: 19.5),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 26,
                          left: 30,
                          child: Text(
                            "Get Your\nOwn Diet Plan",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "'An ounce of prevention is worth a pound of cure.' \n- Benjamin Franklin",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 99, 99, 99)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TopRecipesCarousel(),
                const TrendingBlogsCarousel(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentTab,
          selectedItemColor: const Color.fromARGB(195, 14, 192, 106),
          onTap: _navigateToPage,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 35,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                size: 32,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 35,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
