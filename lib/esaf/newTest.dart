import 'package:flutter/material.dart';

class CombinedApprovalCardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  offset: const Offset(-5, 0),
                ),
              ],
            ),
            child: _ApprovalCard(isRecommended: index == 0),
          ),
        ),
      ),
    );
  }
}

class _ApprovalCard extends StatelessWidget {
  final bool isRecommended;

  const _ApprovalCard({Key? key, this.isRecommended = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/shopping.png', width: 50),
                    const SizedBox(width: 16),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('It\'s Approved', style: TextStyle(fontSize: 18)),
                        Text('Shopping', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('Amount'),
                        Text('₹25,000/-'),
                      ],
                    ),
                    Text('|'),
                    Column(
                      children: [
                        Text('Tenure'),
                        Text('6 Months'),
                      ],
                    ),
                    Text('|'),
                    Column(
                      children: [
                        Text('EMI'),
                        Text('₹4,167/-'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            if (isRecommended)
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Recommended',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
