//
//  ContentView.swift
//  Shared
//
//  Created by Guest User on 1/27/22.
//

import SwiftUI

struct RecipeListView: View {
    //Reference the view model
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        NavigationView{
            List(model.recipes) { r in
                NavigationLink(destination: RecipeDetailView(recipe:r)) {
                        HStack(spacing: 20.0) {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            Text(r.name)
                        }
                }
            }
            .navigationTitle("All Recipes")
        }
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
