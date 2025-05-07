import 'package:flutter/material.dart';

import 'package:okapi_zando_mobile/business/models/model_produit_vendeur.dart';

class ProductCard2 extends StatelessWidget {
  final Productv productv;

  const ProductCard2(this.productv, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
          Expanded(
            flex: 5,
            child: ClipRRect(
              
              child: Image.asset(
                productv.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            child: Text(
              productv.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            child: Text(
              '${productv.price.toStringAsFixed(2)} \$',
              style: TextStyle(color: Colors.green),
            ),
          ),
          // étoiles
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return Icon(
                  index < productv.rating ? Icons.star : Icons.star_border,
                  color: Colors.orange,
                  size: 16,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
