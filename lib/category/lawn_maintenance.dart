import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../cart.dart';
import '../expert_profile.dart';

class LawnMaintenancePage extends StatefulWidget {
  @override
  State<LawnMaintenancePage> createState() => _LawnMaintenancePageState();
}

class _LawnMaintenancePageState extends State<LawnMaintenancePage> {
  List<Map<String, dynamic>> cartItems = [];
  String selectedCat = 'lawnmowing';

  CollectionReference dataCollection =
      FirebaseFirestore.instance.collection('experts');

  // Example list of colors for backgrounds
  final List<Color> cardColors = [
    Colors.lightBlueAccent,
    Colors.pinkAccent,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Lawn Maintenance',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to the cart page when the cart icon is pressed
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CartPage(cartItems: cartItems)),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 15.0),
          Container(
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                // Implement your search functionality here
              },
            ),
          ),
          SizedBox(height: 15.0),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: StreamBuilder<QuerySnapshot>(
                stream: dataCollection
                    .where('category', isEqualTo: selectedCat)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  }

                  return ListView.builder(
                    itemCount: snapshot.data?.docs.length,
                    itemBuilder: (context, index) {
                      var expertData = snapshot.data?.docs[index]?.data()
                          as Map<String, dynamic>?;
                      if (expertData == null) {
                        // Return an empty widget or a placeholder if expertData is null
                        return SizedBox.shrink();
                      }

                      var expertName = expertData['name'] as String?;
                      var expertDesc = expertData['desc'] as String?;
                      var expertPrice = expertData['price'];
                      var expertRate = expertData['rating'];
                      var imagePath = expertData['imagePath']
                          as String?; // Replace 'Expert' with the actual field name  in your Firestore documents

                      // Example widget to display the expert name in a colored card
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => expertProfile(
                                  expertName: expertName ?? '',
                                  expertDesc: expertDesc ?? '',
                                  expertPrice: expertPrice,
                                  expertRate: expertRate,
                                  imagePath: imagePath ?? ''),
                            ),
                          );
                        },
                        child: Card(
                          color: cardColors[index % cardColors.length],
                          child: ListTile(
                            title: Text(expertName ?? ''),
                            subtitle: Text(expertDesc ?? ''),
                            // You can add more information about the expert here if needed
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
