import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1114),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F1114),
        foregroundColor: Colors.white,
        title: const Text('Payment'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Credit Card', style: TextStyle(color: Colors.white, fontSize: 16)),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Color(0xFFFF9F43)),
                color: const Color(0xFF1C1C1E),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.credit_card, color: Color(0xFFFF9F43)),
                      Spacer(),
                      Text('VISA', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '3897 8923 6745 4638',
                    style: TextStyle(color: Colors.white, fontSize: 18, letterSpacing: 2),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Robert Evans', style: TextStyle(color: Colors.white)),
                      Text('02/30', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            _paymentOption('Wallet', '\$ 100.50', asset: 'assets/icons/wallet.png'),
            const SizedBox(height: 10),
            _paymentOption('Google Pay', null, asset: 'assets/icons/playstore.png'),
            const SizedBox(height: 10),
            _paymentOption('Apple Pay', null, asset: 'assets/icons/apple_pay.png'),
            const SizedBox(height: 10),
            _paymentOption('Amazon Pay', null, asset: 'assets/icons/amazone.png'),

            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Price', style: TextStyle(color: Colors.grey)),
                Text('\$ 4.20', style: TextStyle(color: Colors.white)),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF9F43),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {},
                child: const Text(
                  'Pay from Credit Card',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _paymentOption(String label, String? amount, {IconData? icon, String? asset}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFF1C1C1E),
      ),
      child: Row(
        children: [
          if (icon != null)
            Icon(icon, color: Colors.white)
          else if (asset != null)
            Image.asset(asset, height: 22, width: 22),
          const SizedBox(width: 12),
          Expanded(
            child: Text(label, style: const TextStyle(color: Colors.white, fontSize: 15)),
          ),
          if (amount != null)
            Text(amount, style: const TextStyle(color: Colors.white, fontSize: 14)),
        ],
      ),
    );
  }
}
