//
//  RecipeDetailView.swift
//  Recipe List App (iOS)
//
//  Created by Guest User on 1/28/22.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                //Mark: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                //Mark: Ingredients
                VStack(alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    ForEach(recipe.ingredients, id:\.self){ r in
                        Text("• "+r)
                    }
                }
                .padding(.horizontal)
                
                //Mark: Divider
                Divider()
                
                
                //Mark: Directions
                VStack(alignment: .leading){
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    ForEach(0..<recipe.directions.count, id:\.self){ r in
                        Text(String(r+1) + " " + recipe.directions[r])
                            .padding(.bottom, 5)
                    }
                }
                .padding(.horizontal)
            }
            
        }
        
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
