import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction History'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Pending'),
            Tab(text: 'Done'),
          ],
          indicatorColor: Colors.red,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Halaman Pending dengan ilustrasi dan teks jika tidak ada transaksi
          _buildPendingPage(),
          // Halaman Done
          _buildTransactionList("Done"),
        ],
      ),
    );
  }

  // Halaman Pending ketika tidak ada transaksi
  Widget _buildPendingPage() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gambar ilustrasi transaksi selesai
            Image.asset(
              'images/transaksi.png', // Ganti dengan path gambar yang sesuai
              height: 200,
            ),
            SizedBox(height: 24),
            // Teks informasi
            Text(
              'All transaction is completed!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Any pending transaction will appear in this page',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  // Method untuk membangun list transaksi (untuk halaman Done)
  Widget _buildTransactionList(String status) {
    final List<Map<String, String>> transactions = [
      {
        "title": "Pay Merchant",
        "amount": "Rp45.400",
        "date": "15 Sep 2024, 17:32 WIB",
        "description": "Indomaret_purchase",
        "status": "Success"
      },
      {
        "title": "Pay Merchant",
        "amount": "Rp55.000",
        "date": "15 Sep 2024, 17:28 WIB",
        "description": "Indomaret_purchase",
        "status": "Success"
      },
      {
        "title": "Top Up from Bank",
        "amount": "Rp100.000",
        "date": "15 Sep 2024, 17:26 WIB",
        "description": "Top Up from ortajasa B_001145615163862752",
        "status": "Success"
      },
      {
        "title": "Pay QRIS",
        "amount": "Rp21.000",
        "date": "31 Aug 2024, 11:49 WIB",
        "description": "SBY - MOG TP S1",
        "status": "Success"
      },
    ];

    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        transaction['title']!,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        transaction['amount']!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        transaction['date']!,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Text(
                        transaction['status']!,
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Divider(thickness: 1),
                  SizedBox(height: 8),
                  Text(
                    transaction['description']!,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
