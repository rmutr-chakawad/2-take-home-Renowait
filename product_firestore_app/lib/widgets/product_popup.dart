import 'package:flutter/material.dart';
import 'package:product_firestore_app/models/product_model.dart';
import 'package:product_firestore_app/widgets/product_form.dart';

// ignore: must_be_immutable
class ProductPopup extends StatelessWidget {
  ProductModel? product;
  ProductPopup({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      //กำหนดระยะหา่งจากด้วนล่างด้วยระยะความสูงของคีน์บอร์ด
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom   
      ),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15)
          ),
          color: Colors.white,
        ),
        //กำหนดความสูงของวิดเจ็ด container 30 % ของความสุงหนา้จอ
        height: MediaQuery.of(context).size.height * 0.3,
        child:  ProductForm(),
      ),
    );  
  }
}