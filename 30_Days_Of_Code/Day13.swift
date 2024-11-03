/// JavaScript solution, as there are no abstract classes in Swift.

//'use strict';
//
//var _input = '';
//var _index = 0;
//process.stdin.on('data', (data) => { _input += data; });
//process.stdin.on('end', () => {
//    _input = _input.split(new RegExp('\n'));
//    main();
//});
//function readLine() { return _input[_index++]; }
//
///**** Ignore above this line. ****/
//
//class Book {
//    constructor(title, author) {
//        if (this.constructor === Book) {
//            throw new TypeError('Do not attempt to directly instantiate an abstract class.');
//        }
//        else {
//            this.title = title;
//            this.author = author;
//        }
//    }
//
//    display() {
//        console.log('Implement the \'display\' method!')
//    }
//}

// Declare your class here.
//class MyBook extends Book {
//constructor(title, author, price){
//    super( title, author);
//    this.price = price
//}
//
//display(){
//    console.log(`Title: ${this.title} ${'\n'}Author: ${this.author} ${'\n'}Price: ${this.price}`)
//}
//
//
//}
//    /**
//    *   Class Constructor
//    *
//    *   @param title The book's title.
//    *   @param author The book's author.
//    *   @param price The book's price.
//    **/
//    // Write your constructor here
//
//    /**
//    *   Method Name: display
//    *
//    *   Print the title, author, and price in the specified format.
//    **/
//    // Write your method here
//
//// End class
//
//function main() {
//    let title = readLine()
//    let author = readLine()
//    let price = +readLine()
//
//    let book = new MyBook(title, author, price)
//    book.display()
//}



/// Solution in Swift

import UIKit

class Book {
    
    var title: String
    var author: String
    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
    func display() {
        print("You need to initialized values")
    }
}

class MyBook: Book {

    var price: Int
    
    init(titele: String, author: String, price: Int) {
        
        self.price = price
        
        super.init(title: titele, author: author)
    }
    
    override func display() {
        
        print("Title: \(title) \nAuthor: \(author) \nPrice: \(price)")
    }
}


let book = MyBook(titele: "Swift", author: "Krunoslav Zaher", price: 100)
book.display()



