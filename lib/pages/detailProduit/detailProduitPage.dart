import 'package:flutter/material.dart';
import 'package:okapi_zando_mobile/pages/widgets/myBottomNavigation.dart';

class Detailproduitpage extends StatefulWidget {
  const Detailproduitpage({super.key});

  @override
  State<Detailproduitpage> createState() => _DetailproduitpageState();
}

class _DetailproduitpageState extends State<Detailproduitpage> {
  bool isFavorite = false;
  int detailProduitIncrement = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,

        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.navigate_before),
        ),
        title: Text('Detail produits',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 30,
              width: 30,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),

              ),
              child:IconButton(
                 padding: EdgeInsets.symmetric(horizontal: 8),
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                icon:
                    isFavorite
                        ? Icon(Icons.favorite, color: Colors.red,size: 30,)
                        : Icon(Icons.favorite_outlined,size: 30,),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image.asset(
                'assets/images/fraise.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Positioned(
              top: 200,

              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                width: MediaQuery.of(context).size.width,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Article name',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const Text(
                                  "99",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              width: 100,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      width: 15,
                                      color: Colors.grey,
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: (){
                                            setState(() {
                                              detailProduitIncrement --;
                                            });
                                          },
                                          child: Text(
                                            '-',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      width: 15,
                                      color: Colors.white,
                                      child: Center(
                                        child: Text(
                                          detailProduitIncrement.toString(),
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      width: 15,
                                      color: Colors.blue,
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: (){
                                            setState(() {
                                              detailProduitIncrement ++;
                                            });
                                          },
                                          child: Text(
                                            '+',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text('note'),
                                Icon(Icons.star, size: 15, color: Colors.amber),
                              ],
                            ),
                          ),
                          Expanded(child: SizedBox(width: 10)),
                          Expanded(child: SizedBox(width: 10)),
                        ],
                      ),

                      SizedBox(height: 15),
                      SizedBox(
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Description',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Expanded(
                              child: Text(
                                'gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Read more',
                        style: TextStyle(color: Colors.deepOrangeAccent),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 400,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          child: const Text(
                            'Add to cart',
                            style: TextStyle(color: Colors.white,fontWeight:FontWeight.w300 ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MybottomNavigation(),
    );
  }
}
