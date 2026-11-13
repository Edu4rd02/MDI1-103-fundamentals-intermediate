//
//  Filter.swift
//  MDI1-103-fundamentals-intermediate
//
//  Created by Jose Eduardo Becerra Flores on 12/11/26.
//

/*
    ----- FILTER -----
    Array method that creates a new array containing only elements that satisfy a given condition.
    Filter keeps only the items that return true.
    It does not modify the original array, it returns a new one.
 
    ----- SYNTAX -----
 
    collection.filter( $0 condition )
 
    - $0 represents the current element in the sequence.
 
 */

import Playgrounds

#Playground {
    print("----- FILTER ------")
    print("\n-- Filter: Numbers (Greater than 5)")
    
    let values = [2, 41, 16, 1, 35]
    
    let bigValues = values.filter{$0 > 5}
    print(bigValues)
    
    print("\n-- Filter: Numbers (Even numbers) --")
    let numbers = [1,2,3,4,5,6]
    let evenNumbers = numbers.filter{$0 % 2 == 0}
    
    print(evenNumbers)
    
    print("\n-- Filter: Dictionary (Dishes price < $10) --")
    let dishes = [
        "Pizza": 10.50,
        "Pasta": 7.50,
        "Hamburguer": 10.99,
        "Hot Dog": 4.99,
        "Buffalo Wings": 13.99
    ]
    
    let cheapDishes = dishes.filter{ $0.value < 10.00 }
    print(cheapDishes)
    
    // MINI-CHALLENGE
    print("\n-- Filter: Students in Advanced Level --")
    
    let studentsLevels = [
        "Michael": "Beginner",
        "Dwight": "Beginner",
        "Jim": "Advanced",
        "Pam": "Intermediate",
        "Angela": "Intermediate",
        "Oscar": "Advanced"
    ]
    
    let advancedStudents = studentsLevels.filter{ $0.value == "Advanced" }
    print(advancedStudents)
}
