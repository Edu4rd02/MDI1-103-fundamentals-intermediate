//
//  DishDetailView.swift
//  MDI1-103-fundamentals-intermediate
//
//  Created by Jose Eduardo Becerra Flores on 07/11/26.
//

import SwiftUI

struct DishDetailView: View {
    let dish = Dish(
        name: "Greek Salad",
        category: "Salads",
        price: 10.99,
        description: "A classic Caesar salad featuring crisp Romaine lettuce leaves tossed with crunchy croutons and creamy dressing.",
        imageName: "greek-salad"
    )
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Image(dish.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 250)
                    .clipped()
                
                VStack(alignment: .leading){
                    HStack {
                        VStack(alignment: .leading) {
                            Text(dish.name)
                                .font(.title)
                                .bold()
                            Text(dish.category)
                                .foregroundStyle(.secondary)
                                .italic()
                        }
                        Spacer()
                        Text("$\(dish.price, specifier: "%.2f")")
                            .font(.title)
                            .foregroundStyle(.green).bold()

                    }.padding(.vertical)
                    Text(dish.description)
                        .foregroundStyle(.secondary)
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    DishDetailView()
}
