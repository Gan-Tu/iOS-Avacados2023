//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Gan Tu on 9/4/23.
//

import SwiftUI

struct RecipeCookingView: View {
    var recipe: Recipe

    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Servies: \(recipe.serves)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
        }
        .font(.footnote)
        .foregroundStyle(Color.gray)
    }
}

#Preview {
    RecipeCookingView(recipe: recipeData[0])
}
