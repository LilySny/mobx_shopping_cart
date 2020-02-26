class Product {
  final int id;
  final String name;
  final double price;
  final String description;
  final String imageUrl;

  Product(this.id, this.name, this.price, this.description, this.imageUrl);
}

List<Product> generatedList() {
  final maps = [Product(1, "Cupcake Gothic T-Shirt", 20.0, "Gothic T-Shirt",
        "https://i.pinimg.com/originals/3c/81/0d/3c810de31a9269067b1c33e774a4197d.jpg"), 
        Product(2, "Cupcake Gothic T-Shirt", 30.0, "Go To Hell T-Shirt",
        "https://cdn1.thehunt.com/app/public/system/note_images/4095740/note_view/d2e596bb966eb3e4dee33f2ec6969fa6.jpg"), 
        Product(3, "Cupcake Gothic T-Shirt", 25.0, "Gothic T-Shirt",
        "https://i.pinimg.com/originals/3c/81/0d/3c810de31a9269067b1c33e774a4197d.jpg"), 
        Product(4, "Cupcake Gothic T-Shirt", 40.0, "Gothic T-Shirt",
        "https://cdn1.thehunt.com/app/public/system/note_images/4095740/note_view/d2e596bb966eb3e4dee33f2ec6969fa6.jpg"), 
        Product(5, "Cupcake Gothic T-Shirt", 35.90, "Gothic Slash T-Shirt",
        "http://cdn.shopify.com/s/files/1/0836/9167/products/twisted-inferno-tattoo-gothic-slash-back-t-shirt-1_040f44de-be7b-44d1-98ca-d3f3e2ed7066_grande.jpg?v=1557171884"), 
        Product(6, "Cupcake Gothic T-Shirt", 20.80, "Satan Pony T-Shirt",
        "https://www.picclickimg.com/d/l400/pict/263689803301_/Cupcake-Cult-My-Little-Pony-T-Shirt-Gothic.jpg"), 
  ];
  return maps;
}
