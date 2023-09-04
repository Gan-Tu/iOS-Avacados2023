//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Gan Tu on 9/4/23.
//

import SwiftUI

struct RecipeCardView: View {
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    VStack {
                        HStack {
                            Spacer()
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundStyle(Color.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x:0, y:0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                        }
                        Spacer()
                    }
                )
            
            VStack(alignment: .leading, spacing: 12) {
                // TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                // HEADLINE
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundStyle(Color.gray)
                    .italic()
                
                // RATING
                RecipeRatingView(recipe: recipe)
                
                // COOKING
                RecipeCookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x:0, y:0)
    }
}

#Preview {
    RecipeCardView(recipe: recipeData[0])
}
