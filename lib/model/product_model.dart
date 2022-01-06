class Product {
  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  /*static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      name: snap['nom'],
      price: snap['prix'],
      imageUrl: snap['img'],
    );
    return product;
  }*/

  static const List<Product> products = [
    Product(
        name: 'pringles',
        price: 800,
        imageUrl:
            'https://www.jiomart.com/images/product/original/491129204/pringles-original-potato-crisps-110-g-0-20210106.jpg'),
    Product(
        name: 'Ice Cream',
        price: 300,
        imageUrl:
            'https://blog.thermoworks.com/wp-content/uploads/2021/06/Ice_Cream_Compressed-43.jpg'),
    Product(
        name: 'pommes',
        price: 100,
        imageUrl:
            'https://resize1.prod.docfr.doc-media.fr/rcrop/1200,902,center-middle/img/var/doctissimo/storage/images/fr/www/nutrition/famille-d-aliments/guide-aliments/pomme/7854594-1-fre-FR/pomme.jpg'),
    Product(
        name: 'coca     cola',
        price: 300,
        imageUrl:
            'https://www.myamericanmarket.com/26686-large_default/coca-cola-classic.jpg'),
    Product(
        name: 'pepsi',
        price: 800,
        imageUrl:
            'https://www.luluhypermarket.com/medias/5361-01.jpg-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wzNDAxMDR8aW1hZ2UvanBlZ3xoY2IvaDYzLzk3NzU1NjAyNjE2NjIvNTM2MS0wMS5qcGdfMTIwMFd4MTIwMEh8NGIwZWVlMjQzMjk2YWM3NTg4MmI2Zjg3MmIzOTZkNWY0ZDcyNDUzMWFmMzkzOGQ0N2JkMTQ5ZjFkZTdiMmE4Yw'),
    Product(
        name: 'hollywood',
        price: 3000,
        imageUrl:
            'https://m.media-amazon.com/images/I/81xtj2iWihL._SL1500_.jpg'),
    Product(
        name: 'pringles',
        price: 800,
        imageUrl:
            'https://m.media-amazon.com/images/I/81xtj2iWihL._SL1500_.jpg'),
    Product(
        name: 'Ice Cream',
        price: 3000,
        imageUrl:
            'https://m.media-amazon.com/images/I/81xtj2iWihL._SL1500_.jpg'),
  ];
}
