// Q9: Create a system to manage books in a library.
// Implement a Book class with properties like title, author, isbn, and isAvailable.
// Implement a Library class with methods:
// addBook(Book book): Adds a book to the library.
// borrowBook(String isbn): Marks a book as borrowed if available.
// returnBook(String isbn): Marks a book as available again.
// searchByTitle(String title): Returns books matching the title.
// Ensure that the system correctly updates the book's availability.
void main() { 
  Book diamondDust = Book('Diamond Dust', 'Ahmed Mourad', 'DDAM', true); 
  Book ardZekola = Book('Ard Zekola', 'Amr Abdhamed', 'AZAA', false); 
  Book granadaTrilogy = Book('Granada Trilogy', 'Radwa Ashour', 'GTRA', true); 

  Library myLibrary = Library(); 
  myLibrary.addBook(diamondDust); 
  myLibrary.addBook(ardZekola); 
  myLibrary.addBook(granadaTrilogy); 

} 
 
class Book { 
  String title; 
  String author; 
  String isbn; 
  bool isAvailable; 

  Book(this.title, this.author, this.isbn, this.isAvailable); 
} 
 
class Library { 
  List<Book> books = []; 

  void addBook(Book book) { 
    books.add(book); 
  } 

  void borrowBook(String isbn) { 
    for (var book in books) { 
      if (book.isbn == isbn && book.isAvailable) { 
        book.isAvailable = false; 
        print('You have borrowed "${book.title}".'); 
        return; 
      } 
    } 
    print('Book with ISBN $isbn is not available.'); 
  } 

  void returnBook(String isbn) { 
    for (var book in books) { 
      if (book.isbn == isbn && !book.isAvailable) { 
        book.isAvailable = true; 
        print('You have returned "${book.title}".'); 
        return; 
      } 
    } 
    print('Book with ISBN $isbn was not borrowed.'); 
  } 

  String searchByTitle(String title) { 
    for (var book in books) { 
      if (book.title == title) { 
        return 'The book "$title" is ${book.isAvailable ? "available" : "not available"}.';
      } 
    } 
    return 'This book is not in the library.'; 
  } 
}