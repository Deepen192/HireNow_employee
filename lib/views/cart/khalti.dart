import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:flutter_application_1/services/firestore_services.dart';

class KhaltiPaymentPage extends StatefulWidget {
  final String userId;

  const KhaltiPaymentPage({super.key, required this.userId});

  @override
  State<KhaltiPaymentPage> createState() => _KhaltiPaymentPageState();
}

class _KhaltiPaymentPageState extends State<KhaltiPaymentPage> {
  TextEditingController amountController = TextEditingController();
  List<dynamic> orders = [];
  int totalPrice = 0;

  @override
  void initState() {
    super.initState();
    fetchLatestOrder();
  }

  Future<void> fetchLatestOrder() async {
    try {
      var querySnapshot = await FirestoreServices.getLatestOrder(widget.userId).first;
      if (querySnapshot.docs.isNotEmpty) {
        var order = querySnapshot.docs.first;
        setState(() {
          orders = order['orders'];
          calculateTotalPrice(); // Calculate total price when orders are fetched
        });
      }
    } catch (e) {
      print('Error fetching latest order: $e');
    }
  }

  void calculateTotalPrice() {
    int total = 0;
    for (var order in orders) {
      if (order['tprice'] != null) {
        total += int.tryParse(order['tprice'].toString()) ?? 0;
      }
    }
    setState(() {
      totalPrice = total;
      amountController.text = totalPrice.toString(); // Update amountController with total price
    });
  }

  int getAmt() {
    return totalPrice * 100
    ; // Converting to paisa
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDAD3BE),
        title: const Text('Khalti Payment Integration'),
      ),
      body: orders.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Container(
              color: Colors.white,
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: orders.length,
                      itemBuilder: (context, index) {
                        var order = orders[index];
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Image.network(
                                  order['img'],
                                  width: 300,
                                  height: 300,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Product: ${order['title']}',
                                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Quantity: ${order['qty']}',
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Total Price: Rs. ${order['tprice']}',
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 18),
                              TextFormField(
                                controller: amountController,
                                keyboardType: TextInputType.number,
                                 readOnly: true, 
                                decoration: const InputDecoration(
                                  labelText: 'Amount to pay',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  ),
                                ),
                                onChanged: (value) {
                                  // Handle changes in amountController text field, if needed
                                },
                              ),
                              const SizedBox(height: 20),
                              Center(
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: const BorderSide(color: Colors.red),
                                  ),
                                  height: 50,
                                  color: const Color(0xFF56328c),
                                  child: const Text(
                                    'Pay With Khalti',
                                    style: TextStyle(color: Colors.white, fontSize: 22),
                                  ),
                                  onPressed: () {
                                    if (totalPrice > 0) {
                                      KhaltiScope.of(context).pay(
                                        config: PaymentConfig(
                                          amount: getAmt(),
                                          productIdentity: 'dells-sssssg5-g5510-2021',
                                          productName: 'Product Name',
                                        ),
                                        preferences: [
                                          PaymentPreference.khalti,
                                        ],
                                        onSuccess: (su) {
                                          const successSnackBar = SnackBar(
                                            content: Text('Payment Successful'),
                                          );
                                          ScaffoldMessenger.of(context).showSnackBar(successSnackBar);
                                        },
                                        onFailure: (fa) {
                                          const failedSnackBar = SnackBar(
                                            content: Text('Payment Failed'),
                                          );
                                          ScaffoldMessenger.of(context).showSnackBar(failedSnackBar);
                                        },
                                        onCancel: () {
                                          const cancelSnackBar = SnackBar(
                                            content: Text('Payment Cancelled'),
                                          );
                                          ScaffoldMessenger.of(context).showSnackBar(cancelSnackBar);
                                        },
                                      );
                                    } else {
                                      // Handle case where totalPrice is zero or less
                                      print('Invalid amount to pay');
                                    }
                                  },
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
