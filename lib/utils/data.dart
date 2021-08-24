class Restaurants {
  int id;
  String name;
  String image;
  String category;
  String range;
  String discount;
  bool isDiscount;
  bool isFavorite;

  Restaurants(this.id, this.name, this.category, this.discount, this.image,
      this.isDiscount, this.isFavorite, this.range);
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
    "isDiscount": true
  },
  {
    "id": 2,
    "name": "Warung Sederhana",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Beveraage",
    "range": "0.2 km",
    "discount": "Up to 50%",
    "isFavorite": true,
    "isDiscount": true
  },
  {
    "id": 3,
    "name": "Warung Mantap",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Chicken",
    "range": "0.5 km",
    "discount": "Up to 30%",
    "isFavorite": true,
    "isDiscount": true
  },
  {
    "id": 4,
    "name": "Warung Molly",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Rice",
    "range": "0.3 km",
    "discount": "Up to 60%",
    "isFavorite": true,
    "isDiscount": true
  },
  {
    "id": 5,
    "name": "Pos Ketan",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Snack",
    "range": "5 km",
    "discount": "Up to 10%",
    "isFavorite": true,
    "isDiscount": true
  },
  {
    "id": 6,
    "name": "Mc Donald",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Fast Food",
    "range": "3 km",
    "discount": "Up to 20%",
    "isFavorite": true,
    "isDiscount": true
  },
  {
    "id": 7,
    "name": "KFC",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Chicken",
    "range": "2 km",
    "discount": "Up to 50%",
    "isFavorite": true,
    "isDiscount": true
  },
  {
    "id": 8,
    "name": "Warung Mu",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Rice",
    "range": "9 km",
    "discount": "",
    "isFavorite": false,
    "isDiscount": false
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
  },
  {
    "id": 10,
    "name": "",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Pecel",
    "range": "10 km",
    "discount": "",
    "isFavorite": false,
    "isDiscount": false,
  },
  {
    "id": 11,
    "name": "",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Pecel",
    "range": "10 km",
    "discount": "",
    "isFavorite": false,
    "isDiscount": false,
  },
  {
    "id": 12,
    "name": "",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Pecel",
    "range": "10 km",
    "discount": "",
    "isFavorite": false,
    "isDiscount": false,
  },
  {
    "id": 13,
    "name": "asdasdasdasd",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Pecel",
    "range": "1 km",
    "discount": "",
    "isFavorite": false,
    "isDiscount": false,
  },
  {
    "id": 14,
    "name": "",
    "image": "https://lorempixel.com/640/480/food/",
    "category": "Pecel",
    "range": "10 km",
    "discount": "",
    "isFavorite": false,
    "isDiscount": false,
  },
];
