import 'package:flutter/material.dart';
import 'package:product_firestore_app/widgets/product_list.dart';
import 'package:product_firestore_app/widgets/product_popup.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                // แสดง Bottom Sheet และสามารถขยายพื้นที่ได้เมื่อมีข้อมูลเพิ่มขึ้น
                isScrollControlled: true,
                context: context,
                builder: (context) => ProductPopup(),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
        backgroundColor: Colors.deepOrange,
      ),  
      body: const ProductList(),
    );
  }
}