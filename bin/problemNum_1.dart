class Book {
  String ? title;
  String ? author;
  double  price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    return price - (price * discountPercent / 100);
  }

  void printDetails(double discountPercent) {
    print("Title: $title");
    print("Author: $author");
    print("Original Price: \$${price.toStringAsFixed(2)}");
    print("Discounted Price (${discountPercent}%): \$${discountedPrice(discountPercent).toStringAsFixed(2)}");
    print("-------------------------------------");
  }
}

void main() {
  Book book1 = Book("Himu", "Humayan Ahmed", 450.0);
  Book book2 = Book("Baisher Bonna", "Tasrif Khan", 350.0);

  book1.printDetails(10);
  book2.printDetails(15);
}
