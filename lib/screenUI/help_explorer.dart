import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  static const routeName = '/Help';
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  /// FAQ Data
  final List<Map<String, String>> faqs = [
    {
      "question": "What happens when my order fails?",
      "answer":
          "If your order fails, any amount deducted will be refunded back to your original payment method within 5–7 business days. You can also retry placing the order."
    },
    {
      "question": "How can I track my order?",
      "answer":
          "Go to 'My Orders' from the profile section. You can see the live status and estimated delivery time for your order."
    },
    {
      "question": "What payment methods are supported?",
      "answer":
          "We support UPI, credit/debit cards, net banking, and popular wallets. Cash on Delivery may be available in select locations."
    },
    {
      "question": "How do I contact support?",
      "answer":
          "You can reach us via the 'Contact Us' option in the app or email support@nector.com. Our support team is available 24/7."
    },
    {
      "question": "Can I cancel an order?",
      "answer":
          "Orders can be cancelled before they are packed. Once shipped, cancellation is not available, but you can request a return."
    },
    {
      "question": "How do I reset my password?",
      "answer":
          "Go to the login screen, click 'Forgot Password', and follow the steps. You’ll receive an OTP or email link to reset it."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
        title: const Text(
          "Help",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Frequently Asked Questions",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.separated(
                itemCount: faqs.length,
                separatorBuilder: (_, __) => const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ExpansionTile(
                      title: Text(
                        faqs[index]["question"]!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Text(
                            faqs[index]["answer"]!,
                            style: const TextStyle(
                              fontSize: 14,
                              height: 1.4,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
