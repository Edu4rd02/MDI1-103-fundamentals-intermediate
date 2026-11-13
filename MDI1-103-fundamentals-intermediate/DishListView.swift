//
//  DishListView.swift
//  MDI1-103-fundamentals-intermediate
//
//  Created by Jose Eduardo Becerra Flores on 10/11/26.
//

import SwiftUI

struct DishListView: View {
    @State private var selectedCategory:String = "All"
    
    var filteredDishes:[Dish] {
        if selectedCategory == "All" {
            return dishes
        } else {
            return dishes.filter { $0.category == selectedCategory }
        }
    }
    
    var dishes = [
        Dish(
            name: "Pancake",
            category: "Breakfasts",
            price: 7.25,
            description: "Fluffy pancakes topped with butter and maple syrup.",
            imageName: "pancake"
        ),
        Dish(
            name:"Waffles",
            category: "Breakfasts",
            price: 9.25,
            description: "Golden, crispy waffles served warm with butter, fresh berries and a drizzle of maple syrup.",
            imageName: "waffle"
        ),
        Dish(
            name: "Greek Salad",
            category: "Salads",
            price: 11.00,
            description: "A classic Caesar salad featuring crisp Romaine lettuce leaves tossed with crunchy croutons and creamy dressing.",
            imageName: "greek-salad"
        ),
        Dish(
            name:"Caprese Salad",
            category:"Salads",
            price: 12.50,
            description:"Traditional Italian dish from the island of Capri consisting of fresh mozzarella, ripe tomatoes, and sweet basil.",
            imageName: "caprese-salad"
        ),
        Dish(
            name: "Pasta",
            category: "Main Courses",
            price: 14.50,
            description: "Al dente pasta tossed in a rich, slow-simmered tomato sauce with garlic, fresh basil and freshly grated Parmesan.",
            imageName: "pasta"
        ),
        Dish(
            name: "Pizza",
            category: "Main Courses",
            price: 12.00,
            description: "Hand-stretched crust baked until golden and topped with tomato sauce, melted mozzarella and fresh basil.",
            imageName: "pizza"
        ),
        Dish(
            name: "Tiramisu",
            category: "Desserts",
            price: 11.50,
            description: "Classic Italian dessert made with espresso-soaked ladyfingers layered with creamy mascarpone and dusted with cocoa.",
            imageName: "tiramisu"
        ),
        Dish(
            name: "Crème Brûlée",
            category: "Desserts",
            price: 10.50,
            description: "Silky vanilla custard topped with a thin layer of caramelized sugar that cracks with every spoonful.",
            imageName: "creme-brule"
        ),
        Dish(
            name: "Pink lemonade",
            category: "Drinks",
            price: 5.00,
            description: "Refreshing homemade lemonade with a hint of raspberry, served ice cold.",
            imageName: "pink-lemonade"
        ),
        Dish(
            name:"Nojito",
            category: "Drinks",
            price: 7.00,
            description: "A non-alcoholic mojito made with fresh mint, lime juice and sparkling water.",
            imageName: "nojito"
        )
    ]
    
    var categories = ["All","Breakfasts","Salads","Main Courses","Desserts","Drinks"]
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 24){
                Text("Find the Best Food Around You")
                    .font(.title)
                    .bold()
                
                // Filter section
                VStack {
                    Text("Discover Food")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 20, weight: .bold))
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(categories, id:\.self) { category in
                                Text(category)
                                    .bold()
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 12)
                                    .background(category == selectedCategory ? .black : Color(red: 183/255, green: 182/255, blue: 194/255).opacity(0.45))
                                    .foregroundStyle(category == selectedCategory ? .white : .black)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .onTapGesture {
                                        selectedCategory = category
                                    }
                            }
                        }
                    }
                }
                ScrollView{
                    LazyVGrid(
                        columns: [GridItem(spacing:20), GridItem()],
                        spacing: 20
                    ){
                        ForEach(filteredDishes){ dish in
                            VStack{
                                Image(dish.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 100)
                                    .clipped()

                                VStack(alignment: .leading){
                                    VStack(alignment: .leading){
                                        Text(dish.name)
                                            .font(.system(size: 18, weight: .bold))
                                        Text(dish.description)
                                            .foregroundStyle(.secondary)
                                            .lineLimit(2)
                                    }
                                    .padding(.vertical, 3)
                                    Text("$\(dish.price, specifier:"%.2f")")
                                        .font(.system(size: 18, weight: .bold))
                                }.padding(.horizontal, 10)
                                    .padding(.bottom, 8)
                            }
                            .background(Color(red: 254/255, green: 248/255, blue: 227/255))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
            }
            .padding()
            .background(Color(red: 107/255, green: 241/255, blue: 120/255).opacity(0.2))
        }
    }
}

#Preview {
    DishListView()
}
