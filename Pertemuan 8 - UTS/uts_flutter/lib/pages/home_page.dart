import 'package:flutter/material.dart';
import 'package:uts_flutter/components/menu_item.dart';
import '../components/service_grid_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    Future.delayed(Duration(seconds: 5), () {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0; // Reset ke halaman pertama
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      _startAutoSlide(); // Ulangi proses
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tinggiLayar = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background Image
            Container(
              child: Image.asset(
                'images/city_background.jpg',
                // fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                SizedBox(
                    height: tinggiLayar * 0.33), // Space for the top section
                // White Card Container for Quick Action Buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildQuickActionItem(
                            Icons.account_balance_wallet_outlined, 'TopUp'),
                        _buildQuickActionItem(
                            Icons.money_off_outlined, 'CashOut'),
                        _buildQuickActionItem(
                            Icons.send_outlined, 'Send Money'),
                        _buildQuickActionItem(Icons.apps_outlined, 'See All'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Grid Layanan
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight: 400,
                    ),
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 4,
                      childAspectRatio: 0.9,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                      children: <Widget>[
                        MenuItem(
                            icon: Icons.phone_android, label: 'Pulsa/Data'),
                        MenuItem(icon: Icons.flash_on, label: 'Electricity'),
                        MenuItem(icon: Icons.tv, label: 'Cable TV & Internet'),
                        MenuItem(
                            icon: Icons.credit_card,
                            label: 'Kartu Uang Elektronik'),
                        MenuItem(icon: Icons.church, label: 'Gereja'),
                        MenuItem(icon: Icons.favorite, label: 'Infaq'),
                        MenuItem(
                            icon: Icons.volunteer_activism,
                            label: 'Other Donations'),
                        MenuItem(icon: Icons.more_horiz, label: 'More'),
                      ],
                    ),
                  ),
                ),
                // Banner Otomatis
                Container(
                  height: 200, // Atur tinggi banner sesuai kebutuhan
                  child: PageView(
                    controller: _pageController,
                    children: [
                      BannerItem(
                          imageUrl:
                              'images/1.jpg'), // Ganti dengan path gambar yang benar
                      BannerItem(
                          imageUrl:
                              'images/2.jpg'), // Ganti dengan path gambar yang benar
                      BannerItem(
                          imageUrl:
                              'images/3.jpg'), // Ganti dengan path gambar yang benar
                      BannerItem(
                          imageUrl:
                              'images/4.jpg'), // Ganti dengan path gambar yang benar
                      BannerItem(
                          imageUrl:
                              'images/5.jpg'), // Ganti dengan path gambar yang benar
                      BannerItem(
                          imageUrl:
                              'images/6.jpg'), // Ganti dengan path gambar yang benar
                    ],
                  ),
                ),
              ],
            ),
            // Top Section (previous AppBar content)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  // Logo LinkAja di kiri atas
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'images/LinkAja.png', // Path untuk logo
                          width: 50, // Ukuran logo yang lebih kecil
                        ),
                        Row(
                          children: [
                            IconButton(
                                icon: Icon(Icons.favorite_border,
                                    color: Colors.white),
                                onPressed: () {}),
                            IconButton(
                                icon: Icon(Icons.notifications_none,
                                    color: Colors.white),
                                onPressed: () {}),
                            IconButton(
                                icon: Icon(Icons.chat_bubble_outline,
                                    color: Colors.white),
                                onPressed: () {}),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  // Kartu merah dengan saldo
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      width: 410, // Lebar kartu merah
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.red, // Warna kartu merah
                        borderRadius:
                            BorderRadius.circular(12), // Sudut yang melengkung
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Dany Fatihul Ihsan',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Your Balance',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 14)),
                                      SizedBox(height: 8),
                                      Row(
                                        children: [
                                          Text('Rp 9.747',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                          SizedBox(width: 4),
                                          Icon(Icons.add_circle_outline,
                                              color: Colors.red, size: 18),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Bonus Balance',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 14)),
                                      SizedBox(height: 8),
                                      Row(
                                        children: [
                                          Text('Rp 0',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                          SizedBox(width: 4),
                                          Icon(Icons.add_circle_outline,
                                              color: Colors.orange, size: 18),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk Tombol Aksi Cepat
  Widget _buildQuickActionItem(IconData iconData, String label) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              iconData,
              color: Colors.black87,
              size: 30.0,
            ),
            Positioned(
              top: 2,
              right: 2,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

// Widget BannerItem
class BannerItem extends StatelessWidget {
  final String imageUrl;

  const BannerItem({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover, // Mengisi seluruh area
        ),
      ),
    );
  }
}
