import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductFeatureScreen extends StatefulWidget {
  const ProductFeatureScreen({super.key});

  @override
  State<ProductFeatureScreen> createState() => _ProductFeatureScreenState();
}

class _ProductFeatureScreenState extends State<ProductFeatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
    );
  }
}
