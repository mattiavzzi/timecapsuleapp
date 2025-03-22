import 'package:animated_toggle/animated_toggle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';

import 'notification.dart';
import 'profile.dart';
import 'profilesettings.dart';
import 'task.dart';

import 'onboarding.dart';

// Add this import at the top with the other imports
import 'login.dart';

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
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Focus',
                style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardingPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF616161),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Go to Onboarding',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF616161),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Go to Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
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
                    return SlideTransition(position: offsetAnimation, child: child);
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
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) => Container(
                    height: MediaQuery.of(context).size.height * 0.9,
                    decoration: const BoxDecoration(
                      color: Color(0xFF333333),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          width: 40,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const Expanded(
                          child: ProfileSettingsPage(),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 15,
                backgroundColor: const Color.fromARGB(0, 66, 66, 66),
                child: Image.asset('lib/assets/setting.png', width: 30, height: 20),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: _getPage(),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        margin: const EdgeInsets.only(bottom: 40),
        // child: NotAnimatedBottomBar(),
        child: AnimatedBottomBar(
          onChange: (currentIndex, targetIndex) {
            _onItemTapped(targetIndex);
          },
        ),
      ),
    );
  }
}

class AnimatedBottomBar extends StatefulWidget {
  final Function(int currentIndex, int targetIndex) onChange;

  const AnimatedBottomBar({super.key, required this.onChange});

  @override
  State<AnimatedBottomBar> createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: InnerShadow(
        shadows: [
          Shadow(
            color: const Color(0xFF515151).withOpacity(1.0),
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
        child: AnimatedHorizontalToggle(
          taps: const ['Tasks', 'Focus', 'Profile'],
          // write you taps names
          width: MediaQuery.of(context).size.width - 40,
          height: 48,
          duration: const Duration(milliseconds: 50),
          initialIndex: 1,
          background: const Color(0xFF333333),
          // activeColor: Colors.deepPurple,
          activeColor: Color(0xFF616161),
          // here you can control the active text style
          activeTextStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          // here you can control the inactive text style
          inActiveTextStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
          // the next 2 line if you need to put padding for the inactive buttons
          horizontalPadding: 16,
          verticalPadding: 4,
          // the next 2 line if you need to put padding for the active button
          activeVerticalPadding: 8,
          radius: 100,
          // you can control the radius for the Animated widget
          activeButtonRadius: 100,
          // you can control the radius for the active button
          onChange: widget.onChange,
          showActiveButtonColor: true,
          // 'en' mean make the start from left other mean start from right
          local:
              'en', // her you can add the local to control the alignment like if you use en its the normal to start from left to right and if you use ar the will start from right to left
        ),
      ),
    );
  }
}

class NotAnimatedBottomBar extends StatefulWidget {
  const NotAnimatedBottomBar({super.key});

  @override
  State<NotAnimatedBottomBar> createState() => _NotAnimatedBottomBarState();
}

class _NotAnimatedBottomBarState extends State<NotAnimatedBottomBar> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
                    overlayColor: WidgetStateProperty.all(const Color(0xFF616161).withOpacity(0.3)),
                    padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 10)),
                    backgroundColor: WidgetStateProperty.all(
                      _selectedIndex == 0 ? const Color(0xFF616161) : Colors.transparent,
                    ),
                    animationDuration: const Duration(milliseconds: 200),
                  ),
                  onPressed: () => _onItemTapped(0),
                  child: Text(
                    'Tasks',
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
                    overlayColor: WidgetStateProperty.all(const Color(0xFF616161).withOpacity(0.3)),
                    padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 10)),
                    backgroundColor: WidgetStateProperty.all(
                      _selectedIndex == 1 ? const Color(0xFF616161) : Colors.transparent,
                    ),
                    animationDuration: const Duration(milliseconds: 200),
                  ),
                  onPressed: () => _onItemTapped(1),
                  child: Text(
                    'Focus',
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
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 10)),
                    backgroundColor: WidgetStateProperty.all(
                      _selectedIndex == 2 ? const Color(0xFF616161) : Colors.transparent,
                    ),
                    animationDuration: const Duration(milliseconds: 200),
                  ),
                  onPressed: () => _onItemTapped(2),
                  child: Text(
                    'Profile',
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
    );
  }
}
