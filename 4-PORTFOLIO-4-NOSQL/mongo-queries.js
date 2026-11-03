use("novamart");

// Insert one document
db.products.insertOne({
  product_id: 1,
  product_name: "Wireless Headphones",
  category: "Electronics",
  supplier: "TechSource Nigeria",
  price: 25000,
  stock_quantity: 49,
  attributes: {
    connectivity: "Bluetooth",
    colour: "Black",
    battery_life: "20 hours"
  }
});

// Insert multiple documents
db.products.insertMany([
  {
    product_id: 2,
    product_name: "Smartphone",
    category: "Electronics",
    supplier: "TechSource Nigeria",
    price: 185000,
    stock_quantity: 20,
    attributes: {
      storage: "128GB",
      operating_system: "Android",
      colour: "Blue"
    }
  },
  {
    product_id: 3,
    product_name: "Electric Blender",
    category: "Home Appliances",
    supplier: "HomePlus Distributors",
    price: 32000,
    stock_quantity: 35,
    attributes: {
      speed_levels: 5,
      capacity: "1.5L",
      colour: "Silver"
    }
  },
  {
    product_id: 4,
    product_name: "Classic Sneakers",
    category: "Fashion",
    supplier: "UrbanStyle Supplies",
    price: 28000,
    stock_quantity: 40,
    attributes: {
      size: 42,
      colour: "White",
      material: "Synthetic leather"
    }
  }
]);

// Find Electronics products
db.products.find({ category: "Electronics" });

// Update Smartphone stock
db.products.updateOne(
  { product_id: 2 },
  { $set: { stock_quantity: 18 } }
);

// Delete Classic Sneakers
db.products.deleteOne({ product_id: 4 });

// Aggregation by category
db.products.aggregate([
  {
    $group: {
      _id: "$category",
      product_count: { $sum: 1 },
      average_price: { $avg: "$price" }
    }
  }
]);