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
        name: 'kebab',
        price: 1500,
        imageUrl:
            'https://www.recipetineats.com/wp-content/uploads/2017/11/Chicken-Doner-Kebab-1-SQ.jpg'),
    Product(
        name: 'Hamburger',
        price: 3000,
        imageUrl:
            'https://image.freepik.com/free-photo/cheeseburger-hamberger-white-background-fast-food_130265-3211.jpg'),
    Product(
        name: 'Shawrma',
        price: 2500,
        imageUrl:
            'https://i.pinimg.com/originals/62/c2/bb/62c2bbf8d0a859385ece7717fa4ca8eb.png'),
    Product(
        name: 'Panini',
        price: 3000,
        imageUrl:
            'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimagesvc.meredithcorp.io%2Fv3%2Fmm%2Fimage%3Furl%3Dhttps%253A%252F%252Fstatic.onecms.io%252Fwp-content%252Fuploads%252Fsites%252F52%252F2020%252F05%252F15%252Fgrilled-ratatouille-panini-bd92e68b-1.jpg&q=85'),
    Product(
        name: 'Crepe',
        price: 1500,
        imageUrl:
            'https://cdn.sallysbakingaddiction.com/wp-content/uploads/2015/02/homemade-crepes-3.jpg'),
    Product(
        name: 'Fatayer',
        price: 3000,
        imageUrl:
            'https://t4.ftcdn.net/jpg/02/96/08/77/360_F_296087729_vtK8WMknQgnSH3FzJb6rS02RPETC8e9t.jpg'),
    Product(
        name: 'Pizza',
        price: 3000,
        imageUrl:
            'https://www.tasteofhome.com/wp-content/uploads/2018/01/Pizza-from-Scratch_EXPS_FT20_8621_F_0505_1_home-5.jpg'),
  ];
  // static const List<Product> products = [
  //   Product(
  //       name: 'pringles',
  //       price: 800,
  //       imageUrl:
  //           'https://www.jiomart.com/images/product/original/491129204/pringles-original-potato-crisps-110-g-0-20210106.jpg'),
  //   Product(
  //       name: 'Ice Cream',
  //       price: 300,
  //       imageUrl:
  //           'https://blog.thermoworks.com/wp-content/uploads/2021/06/Ice_Cream_Compressed-43.jpg'),
  //   Product(
  //       name: 'pommes',
  //       price: 100,
  //       imageUrl:
  //           'https://resize1.prod.docfr.doc-media.fr/rcrop/1200,902,center-middle/img/var/doctissimo/storage/images/fr/www/nutrition/famille-d-aliments/guide-aliments/pomme/7854594-1-fre-FR/pomme.jpg'),
  //   Product(
  //       name: 'coca     cola',
  //       price: 300,
  //       imageUrl:
  //           'https://www.myamericanmarket.com/26686-large_default/coca-cola-classic.jpg'),
  //   Product(
  //       name: 'pepsi',
  //       price: 800,
  //       imageUrl:
  //           'https://www.luluhypermarket.com/medias/5361-01.jpg-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wzNDAxMDR8aW1hZ2UvanBlZ3xoY2IvaDYzLzk3NzU1NjAyNjE2NjIvNTM2MS0wMS5qcGdfMTIwMFd4MTIwMEh8NGIwZWVlMjQzMjk2YWM3NTg4MmI2Zjg3MmIzOTZkNWY0ZDcyNDUzMWFmMzkzOGQ0N2JkMTQ5ZjFkZTdiMmE4Yw'),
  //   Product(
  //       name: 'hollywood',
  //       price: 3000,
  //       imageUrl:
  //           'https://m.media-amazon.com/images/I/81xtj2iWihL._SL1500_.jpg'),
  //   Product(
  //       name: 'pringles',
  //       price: 800,
  //       imageUrl:
  //           'https://m.media-amazon.com/images/I/81xtj2iWihL._SL1500_.jpg'),
  //   Product(
  //       name: 'Ice Cream',
  //       price: 3000,
  //       imageUrl:
  //           'https://m.media-amazon.com/images/I/81xtj2iWihL._SL1500_.jpg'),
  // ];
}
