import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Container(
        color: Colors.white, // Mengatur latar belakang halaman menjadi putih
        child: ListView(
          children: [
            // Bagian atas dengan profil pengguna
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Mengatur posisi elemen dengan ruang di antara
                children: [
                  // Detail pengguna di sebelah kiri
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dany Fatihul Ihsan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '+6285755730905',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Gambar profil di sebelah kanan
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/profil.jpg'), // Ganti dengan path gambar profil
                  ),
                ],
              ),
            ),
            Divider(thickness: 1), // Garis pemisah

            // Opsi-opsi pengaturan akun dalam Container
            _buildAccountOption(context, 'Account Type', 'FULL SERVICE'),
            _buildAccountOption(context, 'Account Settings'),
            _buildAccountOption(context, 'LinkAja Syariah', 'Not Active'),
            _buildAccountOption(context, 'Payment Method'),
            _buildAccountOption(context, 'Email', 'sofyan.89@gmail.com'),
            _buildAccountOption(context, 'Security Question', 'Set'),
            _buildAccountOption(context, 'PIN Settings'),
            _buildAccountOption(context, 'Language', 'English'),
            _buildAccountOption(context, 'Terms of Service'),
            _buildAccountOption(context, 'Privacy Policy'),
            _buildAccountOption(context, 'Help Center'),
          ],
        ),
      ),
    );
  }

  // Method untuk membangun setiap opsi pengaturan dalam Container
  Widget _buildAccountOption(BuildContext context, String title, [String? subtitle]) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16), // Margin untuk pemisahan antar opsi
      padding: const EdgeInsets.all(16), // Padding di dalam Container
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Bayangan lembut untuk efek kedalaman
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3), // Mengatur posisi bayangan
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Mengatur posisi elemen
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 16)),
              if (subtitle != null)
                Text(subtitle, style: TextStyle(color: Colors.grey)),
            ],
          ),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.red),
        ],
      ),
    );
  }
}