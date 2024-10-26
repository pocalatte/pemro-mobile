import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  _AccountPagesState createState() => _AccountPagesState();
}

class _AccountPagesState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: Container(
        color: const Color(0xFFEBF1F9), // Background color
        child: ListView(
          // Ganti SingleChildScrollView dengan ListView
          padding: const EdgeInsets.all(16.0),
          children: [
            const SizedBox(height: 20),
            _buildProfileCard(),
            const SizedBox(height: 30),
            _buildInfoCard([
              _buildProfileOption('Account Type', 'FULL SERVICE'),
              _buildProfileOption('Account Settings', ''),
              _buildProfileOption('LinkAja Syariah', 'Not Active'),
              _buildProfileOption('Payment Method', ''),
            ]),
            const SizedBox(height: 10),
            _buildInfoCard([
              _buildProfileOption('Email', 'elloiskarina@gmail.com'),
              _buildProfileOption('Security Question', 'Set'),
              _buildProfileOption('PIN Settings', 'Set'),
              _buildProfileOption('Language', 'English'),
            ]),
            const SizedBox(height: 10),
            _buildInfoCard([
              _buildProfileOption('Terms of Service', ''),
              _buildProfileOption('Privacy Policy', ''),
              _buildProfileOption('Help Center', ''),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      color: Colors.white, // Card color
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ellois Karina H',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '+6281234567890',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Stack(
              alignment: Alignment.bottomRight,
              // Align the icon to the bottom right
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/fotoku.jpg'),
                ),
                Container(
                  padding: const EdgeInsets.all(4), // Padding around the icon
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300], // Outline color
                  ),
                  child: const Icon(
                    Icons.camera_alt,
                    size: 14, // Size of the icon
                    color: Colors.white, // Icon color
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(List<Widget> children) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      color: Colors.white, // Card color
      child: Column(
        children: children,
      ),
    );
  }

  Widget _buildProfileOption(String title, String subtitle) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 16)),
          if (subtitle.isNotEmpty)
            Text(subtitle, style: const TextStyle(color: Colors.grey)),
        ],
      ),
      trailing:
          const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.red),
      onTap: () {},
    );
  }
}
