import 'package:flutter/material.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';
import 'notification.dart';
import 'profile.dart';
import 'profilesettings.dart';
import 'task.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  Widget _getPage() {
    switch (_selectedIndex) {
      case 0:
        return const TaskPage();
      case 2:
        return const ProfilePage();
      default:
        return const Center(
          child: Text(
            'Focus',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => const NotificationPage(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    const begin = Offset(-1.0, 0.0);
                    const end = Offset.zero;
                    const curve = Curves.easeOutCubic;
                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);
                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 700),
                ),
              );
            },
            child: Image.asset(
              'lib/assets/notification.png',
              width: 10,
              height: 10,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => const ProfileSettingsPage(),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.easeOutQuint;
                      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);
                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                    transitionDuration: const Duration(milliseconds: 500),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 15,
                backgroundColor: const Color.fromARGB(0, 66, 66, 66),
                child: Image.asset(
                  'lib/assets/user.png',
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          ),
        ],
      ),
      body: _getPage(),
      bottomNavigationBar: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        margin: const EdgeInsets.only(bottom: 40),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: InnerShadow(
            shadows: [
              Shadow(
                color: const Color(0xFF515151).withOpacity(1.0),
                blurRadius: 3,
                offset: const Offset(0, 3),
              ),
            ],
            child: Container(
              color: const Color(0xFF333333),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(const Color(0xFF616161).withOpacity(0.3)),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(vertical: 10),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          _selectedIndex == 0 ? const Color(0xFF616161) : Colors.transparent,
                        ),
                        animationDuration: const Duration(milliseconds: 200),
                      ),
                      onPressed: () => _onItemTapped(0),
                      child: Text('Tasks',
                        style: TextStyle(
                          color: _selectedIndex == 0 ? Colors.white : Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(const Color(0xFF616161).withOpacity(0.3)),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(vertical: 10),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          _selectedIndex == 1 ? const Color(0xFF616161) : Colors.transparent,
                        ),
                        animationDuration: const Duration(milliseconds: 200),
                      ),
                      onPressed: () => _onItemTapped(1),
                      child: Text('Focus',
                        style: TextStyle(
                          color: _selectedIndex == 1 ? Colors.white : Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.transparent),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(vertical: 10),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          _selectedIndex == 2 ? const Color(0xFF616161) : Colors.transparent,
                        ),
                        animationDuration: const Duration(milliseconds: 200),
                      ),
                      onPressed: () => _onItemTapped(2),
                      child: Text('Profile',
                        style: TextStyle(
                          color: _selectedIndex == 2 ? Colors.white : Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
