import 'package:flutter/material.dart';

class _CustomDivider extends StatelessWidget {
  const _CustomDivider();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).dividerColor,
      child: Divider(
        height: 0.5,
        thickness: 0.2,
        color: Theme.of(context).dividerColor,
      ),
    );
  }
}

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // const const _CustomDivider(), = Divider(height: 0.5, thickness: 0.2, color: AppColors.dividerColor);
    const horizontalTitleGap = 10.0;

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
                          style: TextStyle(color: Colors.white, fontSize: 16),
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
              Text(
                "Account".toUpperCase(),
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 10),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xFF2A2A2A),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      horizontalTitleGap: horizontalTitleGap,
                      leading: const ImageIcon(
                        AssetImage('lib/assets/icons/avatar.png'),
                        color: Colors.white,
                      ),
                      title: Text(
                        'Profile',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                    const _CustomDivider(),
                    ListTile(
                      horizontalTitleGap: horizontalTitleGap,
                      leading: const ImageIcon(
                        AssetImage('lib/assets/icons/capsulename.png'),
                        color: Colors.white,
                      ),
                      title: Text(
                        'Capsule Name',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '@ceo',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 16,
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                    const _CustomDivider(),
                    ListTile(
                      horizontalTitleGap: horizontalTitleGap,
                      leading: ImageIcon(
                        AssetImage('lib/assets/icons/email.png'),
                        color: Colors.white,
                      ),
                      title: Text(
                        'Email',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'ceo@gmail.com',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 16,
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                    const _CustomDivider(),
                    ListTile(
                      horizontalTitleGap: horizontalTitleGap,
                      leading: const ImageIcon(
                        AssetImage('lib/assets/icons/phone.png'),
                        color: Colors.white,
                      ),
                      title: Text(
                        'Phone',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                    const _CustomDivider(),
                    ListTile(
                      horizontalTitleGap: horizontalTitleGap,
                      leading: const ImageIcon(
                        AssetImage('lib/assets/icons/Profession.png'),
                        color: Colors.white,
                      ),
                      title: Text(
                        'Profession',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Software Engineer',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 16,
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                    const _CustomDivider(),
                    ListTile(
                      horizontalTitleGap: horizontalTitleGap,
                      leading: const ImageIcon(
                        AssetImage('lib/assets/icons/age.png'),
                        color: Colors.white,
                      ),
                      title: Text(
                        'Age',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '25 - 34',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 16,
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                    const _CustomDivider(),
                    ListTile(
                      horizontalTitleGap: horizontalTitleGap,
                      leading: const ImageIcon(
                        AssetImage('lib/assets/icons/logout.png'),
                        color: Colors.white,
                      ),
                      title: Text(
                        'Log Out',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // PREFERENCES Section
              Text(
                "Preferences".toUpperCase(),
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 10),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xFF2A2A2A),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      horizontalTitleGap: horizontalTitleGap,
                      leading: const ImageIcon(
                        AssetImage('lib/assets/icons/notification.png'),
                        color: Colors.white,
                      ),
                      title: Text(
                        'Notifications',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                    const _CustomDivider(),
                    ListTile(
                      horizontalTitleGap: horizontalTitleGap,
                      leading: const ImageIcon(
                        AssetImage('lib/assets/icons/share.png'),
                        color: Colors.white,
                      ),
                      title: Text(
                        'Share Time Capsule',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Help & Support Section
              Text(
                "Help & Support".toUpperCase(),
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 10),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xFF2A2A2A),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      horizontalTitleGap: horizontalTitleGap,
                      leading: const ImageIcon(
                        AssetImage('lib/assets/icons/chat.png'),
                        color: Colors.white,
                      ),
                      title: Text(
                        'Support Chat',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                    const _CustomDivider(),
                    ListTile(
                      horizontalTitleGap: horizontalTitleGap,
                      leading: const ImageIcon(
                        AssetImage('lib/assets/icons/faq.png'),
                        color: Colors.white,
                      ),
                      title: Text(
                        'FAQs',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                    const _CustomDivider(),
                    ListTile(
                      horizontalTitleGap: horizontalTitleGap,
                      leading: const ImageIcon(
                        AssetImage('lib/assets/icons/review.png'),
                        color: Colors.white,
                      ),
                      title: Text(
                        'Write a Review',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Time Capsule Section
              Text(
                "TimeCapsule V1.0".toUpperCase(),
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 10),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xFF2A2A2A),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      horizontalTitleGap: horizontalTitleGap,
                      leading: const ImageIcon(
                        AssetImage('lib/assets/icons/suggestfeatures.png'),
                        color: Colors.white,
                      ),
                      title: Text(
                        'Suggest Features',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                    const _CustomDivider(),
                    ListTile(
                      horizontalTitleGap: horizontalTitleGap,
                      leading: const ImageIcon(
                        AssetImage('lib/assets/icons/paper.png'),
                        color: Colors.white,
                      ),
                      title: Text(
                        'Documentation',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                    const _CustomDivider(),
                    ListTile(
                      horizontalTitleGap: horizontalTitleGap,
                      leading: const ImageIcon(
                        AssetImage('lib/assets/icons/info.png'),
                        color: Colors.white,
                      ),
                      title: Text(
                        'About TimeCapsule',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
