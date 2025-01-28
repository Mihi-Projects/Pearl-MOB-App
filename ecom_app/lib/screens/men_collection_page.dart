import 'package:flutter/material.dart';
import 'product_detail_screen.dart';

class MenCollectionPage extends StatelessWidget {
  const MenCollectionPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> products = const [
    {
      'id': '1',
      'name': 'Monogram Silk',
      'price': 2900.00,
      'image': 'assets/images/Wimg01.png',
      'description': 'A stunning dress perfect for any formal occasion.',
    },
    {
      'id': '2',
      'name': 'Ruffle Dress',
      'price': 4580.00,
      'image': 'assets/images/Wimg02.png',
      'description': 'A comfortable and stylish dress for everyday wear.',
    },
    {
      'id': '3',
      'name': 'Summer Dress',
      'price': 3600.00,
      'image': 'assets/images/Wimg01.png',
      'description': 'A lightweight dress ideal for summer outings.',
    },
    {
      'id': '4',
      'name': 'Evening Gown',
      'price': 5150.00,
      'image': 'assets/images/Wimg02.png',
      'description': 'A sleek and professional dress for formal events.',
    },
    {
      'id': '5',
      'name': 'Winter Dress',
      'price': 4200.00,
      'image': 'assets/images/Wimg01.png',
      'description': 'A warm and cozy dress for the winter season.',
    },
    {
      'id': '6',
      'name': 'Party Dress',
      'price': 3980.00,
      'image': 'assets/images/Wimg02.png',
      'description': 'A glamorous dress for evening events.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Men Collection',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Products',
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                  ),
                ),
              ),
            ),

            // Category Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildCategoryButton('All Items', isSelected: true),
                    _buildCategoryButton('Dresses'),
                    _buildCategoryButton('Tops'),
                    _buildCategoryButton('Skirts'),
                    _buildCategoryButton('Pants'),
                  ],
                ),
              ),
            ),

            // Product Grid
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.75,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return _buildProductCard(context, product);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String category, {bool isSelected = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.deepOrange[800] : Colors.white,
          foregroundColor: isSelected ? Colors.white : Colors.grey[800],
          elevation: isSelected ? 5 : 2,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          shadowColor: isSelected
              ? Colors.deepOrange.withOpacity(0.3)
              : Colors.black.withOpacity(0.1),
        ),
        child: Text(
          category,
          style: TextStyle(
            fontSize: 14,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildProductCard(BuildContext context, Map<String, dynamic> product) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: product),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      product['image'],
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          size: 20,
                          color: Colors.deepOrange[800],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product['name'],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '\$${product['price'].toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.deepOrange[800],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
