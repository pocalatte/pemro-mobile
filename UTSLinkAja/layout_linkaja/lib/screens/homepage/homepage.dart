import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      backgroundColor: const Color(0xFFEBF1F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 22),
              _default(),
              const SizedBox(height: 17),
              _headerSection(),
              const SizedBox(height: 15),
              _feature(),
              const SizedBox(height: 15),
              FeatureGrid(),
              const SizedBox(height: 15),
              const PromoBanner(),
            ],
          ),
        ),
      ),
    );
  }

  Padding _default() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/linkaja_logo.png',
            height: 40,
          ),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(40, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                onPressed: () {},
                child: const Icon(Icons.favorite_border),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(40, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                onPressed: () {},
                child: const Icon(Icons.chat_bubble_outline),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _headerSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFEE3124),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Hi, ELLOIS KARINA H",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _balanceCard(
                  "Your Balance", "Rp 1.504", CupertinoIcons.arrow_right),
              _balanceCard("Bonus Balance", "249", CupertinoIcons.arrow_right),
            ],
          ),
        ],
      ),
    );
  }

  Widget _balanceCard(String title, String amount, IconData arrowRight) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  amount,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 6),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: Icon(
                    arrowRight,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _feature() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 204, 203, 203),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MenuWidget(
            icon: 'assets/topup.png',
            title: 'Top Up',
          ),
          MenuWidget(
            icon: 'assets/transfer.png',
            title: 'Send Money',
          ),
          MenuWidget(
            icon: 'assets/ticket.png',
            title: 'Ticket Code',
          ),
          MenuWidget(
            icon: 'assets/seeall.png',
            title: 'See All',
          ),
        ],
      ),
    );
  }
}

class PromoBanner extends StatefulWidget {
  const PromoBanner({super.key});

  @override
  _PromoBannerState createState() => _PromoBannerState();
}

class _PromoBannerState extends State<PromoBanner> {
  late PageController pageController;
  late Timer timer;
  int currentPage = 0;

  final List<String> promoImages = [
    'https://unsplash.it/350/150?image=1',
    'https://unsplash.it/350/150?image=2',
    'https://unsplash.it/350/150?image=3',
    'https://unsplash.it/350/150?image=4',
    'https://unsplash.it/350/150?image=5',
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    _startAutoSlide(); // Start the timer for auto sliding
  }

  void _startAutoSlide() {
    timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (currentPage < promoImages.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {}); // Refresh the UI to show the current page indicator
    });
  }

  @override
  void dispose() {
    timer.cancel(); // Cancel the timer when the widget is disposed
    pageController.dispose(); // Dispose of the PageController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150, // Adjust the height of the PageView
          child: PageView.builder(
            controller: pageController,
            itemCount: promoImages.length,
            onPageChanged: (int page) {
              setState(() {
                currentPage = page; // Update the current page index
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(promoImages[index]),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            promoImages.length,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentPage == index ? Colors.red : Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MenuWidget extends StatelessWidget {
  final String icon;
  final String title;

  const MenuWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          height: 30,
        ),
        const SizedBox(height: 8),
        Text(title),
      ],
    );
  }
}

class FeatureItem {
  final IconData icon;
  final String label;

  FeatureItem({required this.icon, required this.label});
}

class FeatureGrid extends StatelessWidget {
  FeatureGrid({super.key});

  final List<FeatureItem> features = [
    FeatureItem(icon: Icons.phone_android, label: 'Pulsa/Data'),
    FeatureItem(icon: Icons.flash_on, label: 'Electricity'),
    FeatureItem(icon: Icons.tv, label: 'Cable TV & Internet'),
    FeatureItem(icon: Icons.credit_card, label: 'Kartu Uang Elektronik'),
    FeatureItem(icon: Icons.church, label: 'Gereja'),
    FeatureItem(icon: Icons.info, label: 'Infaq'),
    FeatureItem(icon: Icons.favorite, label: 'Other Donations'),
    FeatureItem(icon: Icons.more_horiz, label: 'More'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1,
      ),
      itemCount: features.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: Center(
                child: Icon(
                  features[index].icon,
                  color: Colors.red,
                  size: 36,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              features[index].label,
              style: const TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        );
      },
    );
  }
}
