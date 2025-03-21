import 'package:flutter/material.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF333333), // Changed to dark gray color
      appBar: null, // Remove the AppBar completely
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Premium Plan Card
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF1E2E23),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.withOpacity(0.3)),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "You're on a Free Plan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Text(
                          "Upgrade to focus better with ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        const Icon(Icons.bolt, color: Colors.white, size: 16),
                        const Text(
                          " Pro",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFD8F3A9), Color(0xFF94E5ED)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                          "Try for \$0.00",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 30),
              
              // ACCOUNT Section
              const Text(
                "Account",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 65, 65, 65),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.person_outline, color: Colors.white),
                      title: const Text(
                        'Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
                      onTap: () {},
                    ),
                    const Divider(
                      height: 0.5,
                      thickness: 0.2,
                      color: Color.fromARGB(127, 255, 255, 255),
                    ),
                    ListTile(
                      leading: const Icon(Icons.diamond_outlined, color: Colors.white),
                      title: const Text(
                        'Capsule Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            '@ceo',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
                        ],
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      height: 0.5,
                      thickness: 0.2,
                      color: Color.fromARGB(127, 255, 255, 255),
                    ),
                    ListTile(
                      leading: const Icon(Icons.email_outlined, color: Colors.white),
                      title: const Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'ceo@gmail.com',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
                        ],
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      height: 0.5,
                      thickness: 0.2,
                      color: Color.fromARGB(127, 255, 255, 255),
                    ),
                    ListTile(
                      leading: const Icon(Icons.phone_outlined, color: Colors.white),
                      title: const Text(
                        'Phone',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
                      onTap: () {},
                    ),
                    const Divider(
                      height: 0.5,
                      thickness: 0.2,
                      color: Color.fromARGB(127, 255, 255, 255),
                    ),
                    ListTile(
                      leading: const Icon(Icons.work_outline, color: Colors.white),
                      title: const Text(
                        'Profession',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Software Engineer',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
                        ],
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      height: 0.5,
                      thickness: 0.2,
                      color: Color.fromARGB(127, 255, 255, 255),
                    ),
                    ListTile(
                      leading: const Icon(Icons.cake_outlined, color: Colors.white),
                      title: const Text(
                        'Age',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            '25 - 34',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
                        ],
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      height: 0.5,
                      thickness: 0.2,
                      color: Color.fromARGB(127, 255, 255, 255),
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout, color: Colors.white),
                      title: const Text(
                        'Log Out',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 30),
              
              // SOCIAL Section
              const Text(
                "Social",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF222222),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.people_outline, color: Colors.white),
                      title: const Text(
                        'Friends',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
                      onTap: () {},
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: Text(
                        "Find your friends who use Opal",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(height: 1, color: Colors.grey, indent: 70, endIndent: 20),
                    ListTile(
                      leading: const Icon(Icons.card_giftcard_outlined, color: Colors.white),
                      title: const Text(
                        'Enter Referral Code',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
                      onTap: () {},
                    ),
                    const Divider(
                      height: 0.5,
                      thickness: 0.2,
                      color: Color.fromARGB(127, 255, 255, 255),
                    ),
                    ListTile(
                      leading: const Icon(Icons.card_giftcard_outlined, color: Colors.white),
                      title: const Text(
                        'Enter Referral Code',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 30),
              
              // PREFERENCES Section
              const Text(
                "Preferences",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}