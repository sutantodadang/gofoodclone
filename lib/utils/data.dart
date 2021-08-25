class Restaurants {
  int id;
  String name;
  String image;
  String category;
  String range;
  String discount;
  bool isDiscount;
  bool isFavorite;
  Foods food;

  Restaurants(this.id, this.name, this.category, this.discount, this.image,
      this.isDiscount, this.isFavorite, this.range, this.food);
}

class Foods extends Restaurants {
  String name;
  String imageUrl;
  int price;
  bool isSelected;
  int count;

  Foods(this.name, this.imageUrl, this.count, this.isSelected, this.price)
      : super(0, '', '', '', '', false, false, '',
            Foods(name, imageUrl, count, isSelected, price));
}

final List<Map> restaurant = [
  {
    "id": 1,
    "name": "Warung Andalan",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Chicken",
    "range": "0.1 km",
    "discount": "Up to 50%",
    "isFavorite": true,
    "isDiscount": true,
    "foods": [
      {
        "name": "Nasi Goreng",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Mie Goreng",
        "price": 9000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Ayam",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Goreng",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Bakar",
        "price": 17000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Bakar Komplit",
        "price": 20000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Soto Ayam",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Capcay",
        "price": 12000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Bihun Goreng",
        "price": 6000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Kambing",
        "price": 18000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Rames",
        "price": 11000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Campur",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
    ]
  },
  {
    "id": 2,
    "name": "Warung Sederhana",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Beveraage",
    "range": "0.2 km",
    "discount": "Up to 50%",
    "isFavorite": true,
    "isDiscount": true,
    "foods": [
      {
        "name": "Nasi Goreng",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Mie Goreng",
        "price": 9000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Ayam",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Goreng",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Bakar",
        "price": 17000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Bakar Komplit",
        "price": 20000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Soto Ayam",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Capcay",
        "price": 12000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Bihun Goreng",
        "price": 6000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Kambing",
        "price": 18000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Rames",
        "price": 11000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Campur",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
    ]
  },
  {
    "id": 3,
    "name": "Warung Mantap",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Chicken",
    "range": "0.5 km",
    "discount": "Up to 30%",
    "isFavorite": true,
    "isDiscount": true,
    "foods": [
      {
        "name": "Nasi Goreng",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Mie Goreng",
        "price": 9000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Ayam",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Goreng",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Bakar",
        "price": 17000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Bakar Komplit",
        "price": 20000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Soto Ayam",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Capcay",
        "price": 12000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Bihun Goreng",
        "price": 6000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Kambing",
        "price": 18000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Rames",
        "price": 11000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Campur",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
    ]
  },
  {
    "id": 4,
    "name": "Warung Molly",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Rice",
    "range": "0.3 km",
    "discount": "Up to 60%",
    "isFavorite": true,
    "isDiscount": true,
    "foods": [
      {
        "name": "Nasi Goreng",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Mie Goreng",
        "price": 9000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Ayam",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Goreng",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Bakar",
        "price": 17000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Bakar Komplit",
        "price": 20000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Soto Ayam",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Capcay",
        "price": 12000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Bihun Goreng",
        "price": 6000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Kambing",
        "price": 18000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Rames",
        "price": 11000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Campur",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
    ]
  },
  {
    "id": 5,
    "name": "Pos Ketan",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Snack",
    "range": "5 km",
    "discount": "Up to 10%",
    "isFavorite": true,
    "isDiscount": true,
    "foods": [
      {
        "name": "Nasi Goreng",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Mie Goreng",
        "price": 9000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Ayam",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Goreng",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Bakar",
        "price": 17000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Bakar Komplit",
        "price": 20000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Soto Ayam",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Capcay",
        "price": 12000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Bihun Goreng",
        "price": 6000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Kambing",
        "price": 18000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Rames",
        "price": 11000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Campur",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
    ]
  },
  {
    "id": 6,
    "name": "Mc Donald",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Fast Food",
    "range": "3 km",
    "discount": "Up to 20%",
    "isFavorite": true,
    "isDiscount": true,
    "foods": [
      {
        "name": "Nasi Goreng",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Mie Goreng",
        "price": 9000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Ayam",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Goreng",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Bakar",
        "price": 17000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Bakar Komplit",
        "price": 20000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Soto Ayam",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Capcay",
        "price": 12000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Bihun Goreng",
        "price": 6000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Kambing",
        "price": 18000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Rames",
        "price": 11000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Campur",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
    ]
  },
  {
    "id": 7,
    "name": "KFC",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Chicken",
    "range": "2 km",
    "discount": "Up to 50%",
    "isFavorite": true,
    "isDiscount": true,
    "foods": [
      {
        "name": "Nasi Goreng",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Mie Goreng",
        "price": 9000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Ayam",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Goreng",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Bakar",
        "price": 17000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Bakar Komplit",
        "price": 20000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Soto Ayam",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Capcay",
        "price": 12000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Bihun Goreng",
        "price": 6000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Kambing",
        "price": 18000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Rames",
        "price": 11000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Campur",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
    ]
  },
  {
    "id": 8,
    "name": "Warung Mu",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Rice",
    "range": "9 km",
    "discount": "",
    "isFavorite": false,
    "isDiscount": false,
    "foods": [
      {
        "name": "Nasi Goreng",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Mie Goreng",
        "price": 9000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Ayam",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Goreng",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Bakar",
        "price": 17000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Bakar Komplit",
        "price": 20000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Soto Ayam",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Capcay",
        "price": 12000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Bihun Goreng",
        "price": 6000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Kambing",
        "price": 18000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Rames",
        "price": 11000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Campur",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
    ]
  },
  {
    "id": 9,
    "name": "Bakul Pecel",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Pecel",
    "range": "10 km",
    "discount": "",
    "isFavorite": false,
    "isDiscount": false,
    "foods": [
      {
        "name": "Nasi Goreng",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Mie Goreng",
        "price": 9000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Ayam",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Goreng",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Bakar",
        "price": 17000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Bakar Komplit",
        "price": 20000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Soto Ayam",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Capcay",
        "price": 12000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Bihun Goreng",
        "price": 6000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Kambing",
        "price": 18000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Rames",
        "price": 11000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Campur",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
    ]
  },
  {
    "id": 10,
    "name": "Penjaga Kelaparan",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Chicken",
    "range": "9 km",
    "discount": "",
    "isFavorite": false,
    "isDiscount": false,
    "foods": [
      {
        "name": "Nasi Goreng",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Mie Goreng",
        "price": 9000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Ayam",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Goreng",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Bakar",
        "price": 17000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Bakar Komplit",
        "price": 20000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Soto Ayam",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Capcay",
        "price": 12000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Bihun Goreng",
        "price": 6000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Kambing",
        "price": 18000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Rames",
        "price": 11000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Campur",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
    ]
  },
  {
    "id": 11,
    "name": "Warung Surabaya",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Rice",
    "range": "10 km",
    "discount": "",
    "isFavorite": false,
    "isDiscount": false,
    "foods": [
      {
        "name": "Nasi Goreng",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Mie Goreng",
        "price": 9000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Ayam",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Goreng",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Bakar",
        "price": 17000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Bakar Komplit",
        "price": 20000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Soto Ayam",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Capcay",
        "price": 12000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Bihun Goreng",
        "price": 6000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Kambing",
        "price": 18000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Rames",
        "price": 11000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Campur",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
    ]
  },
  {
    "id": 12,
    "name": "Pos Kelaparan",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Pecel",
    "range": "10 km",
    "discount": "",
    "isFavorite": false,
    "isDiscount": false,
    "foods": [
      {
        "name": "Nasi Goreng",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Mie Goreng",
        "price": 9000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Ayam",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Goreng",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Bakar",
        "price": 17000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Bakar Komplit",
        "price": 20000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Soto Ayam",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Capcay",
        "price": 12000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Bihun Goreng",
        "price": 6000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Kambing",
        "price": 18000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Rames",
        "price": 11000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Campur",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
    ]
  },
  {
    "id": 13,
    "name": "Warung Pojokan",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Pecel",
    "range": "18 km",
    "discount": "",
    "isFavorite": false,
    "isDiscount": false,
    "foods": [
      {
        "name": "Nasi Goreng",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Mie Goreng",
        "price": 9000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Ayam",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Goreng",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Bakar",
        "price": 17000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Bakar Komplit",
        "price": 20000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Soto Ayam",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Capcay",
        "price": 12000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Bihun Goreng",
        "price": 6000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Kambing",
        "price": 18000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Rames",
        "price": 11000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Campur",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
    ]
  },
  {
    "id": 14,
    "name": "Pertolongan Pertama Lapar",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Pecel",
    "range": "25 km",
    "discount": "",
    "isFavorite": false,
    "isDiscount": false,
    "foods": [
      {
        "name": "Nasi Goreng",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Mie Goreng",
        "price": 9000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Ayam",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Goreng",
        "price": 15000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Ayam Bakar",
        "price": 17000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Bakar Komplit",
        "price": 20000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Soto Ayam",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Capcay",
        "price": 12000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Bihun Goreng",
        "price": 6000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Sate Kambing",
        "price": 18000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Rames",
        "price": 11000,
        "image": "https://lorempixel.com/640/480/food/",
      },
      {
        "name": "Nasi Campur",
        "price": 10000,
        "image": "https://lorempixel.com/640/480/food/",
      },
    ]
  },
];
