//
//  DishListView.swift
//  MDI1-103-fundamentals-intermediate
//
//  Created by Jose Eduardo Becerra Flores on 10/11/26.
//

import SwiftUI

struct DishListView: View {
    var dishes = [
        Dish(
            name: "Pancake",
            category: "Breakfast",
            price: 7.25,
            description: "Fluffy pancakes topped with butter and maple syrup.",
            imageName: "pancake"
        ),
        Dish(
            name:"Waffles",
            category: "Breakfast",
            price: 9.25,
            description: "Golden, crispy waffles served warm with butter, fresh berries and a drizzle of maple syrup.",
            imageName: "waffle"
        ),
        Dish(
            name: "Greek Salad",
            category: "Salad",
            price: 11.00,
            description: "A classic Caesar salad featuring crisp Romaine lettuce leaves tossed with crunchy croutons and creamy dressing.",
            imageName: "greek-salad"
        ),
        Dish(
            name:"Caprese Salad",
            category:"Salad",
            price: 12.50,
            description:"Traditional Italian dish from the island of Capri consisting of fresh mozzarella, ripe tomatoes, and sweet basil.",
            imageName: "caprese-salad"
        ),
        Dish(
            name: "Pasta",
            category: "Main course",
            price: 14.50,
            description: "Al dente pasta tossed in a rich, slow-simmered tomato sauce with garlic, fresh basil and freshly grated Parmesan.",
            imageName: "pasta"
        ),
        Dish(
            name: "Pizza",
            category: "Main course",
            price: 12.00,
            description: "Hand-stretched crust baked until golden and topped with tomato sauce, melted mozzarella and fresh basil.",
            imageName: "pizza"
        ),
        Dish(
            name: "Tiramisu",
            category: "Dessert",
            price: 11.50,
            description: "Classic Italian dessert made with espresso-soaked ladyfingers layered with creamy mascarpone and dusted with cocoa.",
            imageName: "tiramisu"
        ),
        Dish(
            name: "Crème Brûlée",
            category: "Dessert",
            price: 10.50,
            description: "Silky vanilla custard topped with a thin layer of caramelized sugar that cracks with every spoonful.",
            imageName: "creme-brule"
        ),
        Dish(
            name: "Pink lemonade",
            category: "Drink",
            price: 5.00,
            description: "Refreshing homemade lemonade with a hint of raspberry, served ice cold.",
            imageName: "pink-lemonade"
        ),
        Dish(
            name:"Nojito",
            category: "Drink",
            price: 7.00,
            description: "A non-alcoholic mojito made with fresh mint, lime juice and sparkling water.",
            imageName: "nojito"
        )
    ]
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                Text("Find the Best Food Around You")
                    .font(.title)
                    .bold()
                
                ScrollView{
                    LazyVGrid(
                        columns: [GridItem(spacing:20), GridItem()],
                        spacing: 20
                    ){
                        ForEach(dishes){ dish in
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
                            }.background(Color.secondary.opacity(0.07))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
            }.padding()
        }
    }
}

#Preview {
    DishListView()
}
