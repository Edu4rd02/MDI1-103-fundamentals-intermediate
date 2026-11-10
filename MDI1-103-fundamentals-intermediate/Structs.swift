//
//  Structs.swift
//  MDI1-103-fundamentals-intermediate
//
//  Created by Jose Eduardo Becerra Flores on 07/11/26.
//

/*
 ----- STRUCT -----
 Custom data type that lets you group related values and behaviours together.
 Struct is like blueprint, struct defines the plan, but not the actual building.
 Structs define the spae of data, instances bring it to life
 
 It can contains:
 - Properties(variable/constants)
 - Methods
 - Initializers
 
 ---- SYNTAX -----
 
 struct StructName {
    var/let propertyName1: ElementType
    var/let propertyName2: ElementType
 
    fun functionName(){
        //function body
    }
 }
 */

import Playgrounds

#Playground{
    print("----- STRUCT -----")
    print("\n-- Basic Struct --")
    
    struct Customer {
        var name: String
        var email: String
        var age: Int
        var visits: Int
        
        func printCustomerInformation(){
            print("-- Customer name: \(name), email: \(email), age: \(age), visits: \(visits) --")

        }
    }
    
    // Instance
    let customer1 = Customer(
        name: "Michael",
        email: "michael@gmail.com",
        age: 25,
        visits: 3
    )
    
    let customer2 = Customer(
        name: "Jim",
        email: "jimmy@gmail.com",
        age: 32,
        visits: 4
    )
    
    // Print struct
    print(customer1)
    
    // Accessing properties
    print(customer1.name)
    print(customer1.email)
    print(customer1.age)
    print(customer1.visits)
    print("-- Customer name: \(customer1.name), email: \(customer1.email), age: \(customer1.age), visits: \(customer1.visits) --")
    customer1.printCustomerInformation()
    
    print(customer2)
    print(customer1.name)
    print(customer1.email)
    customer2.printCustomerInformation()
    
    /*
      -- Mini-challenge --
     1. Create a struct called "Book"
        - Properties:
            -   Title (String)
            -   Author (String)
            -   Pages (Int)
        - Add a function called "printDetails" that prints:
            "Title <title>, Author <author>, Page <pages>
     
     2. Create at least 3 instances of Book
     
     3. Call the function for each book instance
     */
    
    struct Book {
        var title:String
        var author:String
        var pages:Int
        
        func printDetails(){
            print("Title: \(title), Author: \(author), Pages: \(pages)")
        }
    }
    
    let book1 = Book(
        title: "To the Lighthouse",
        author: "Virginia Wolf",
        pages: 320
    )
    
    book1.printDetails()
    
    let book2 = Book(
        title: "Atomic Habits",
        author: "James Clear",
        pages: 270
    )
    
    book2.printDetails()
    
    let book3 = Book(
        title: "Man's Search of Meaning",
        author: "Viktor E. Frankl",
        pages: 266
    )
    
    book3.printDetails()
}
