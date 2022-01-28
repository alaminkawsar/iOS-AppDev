//
//  RecipeModel.swift
//  Recipe List App (iOS)
//
//  Created by Guest User on 1/27/22.
//

import Foundation
class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        //Create an instance of data services and get the data
        
        self.recipes = DataService.getLocalData()
        
        //set the repies property
        
    }
}
