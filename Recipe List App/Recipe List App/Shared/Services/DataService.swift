//
//  DataServices.swift
//  Recipe List App (iOS)
//
//  Created by Guest User on 1/27/22.
//

import Foundation

class DataService {
    static func getLocalData() -> [Recipe] {
        //parse local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        //Check if pathString is not nil, otherwise..
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create a url object
        
        let url = URL(fileURLWithPath: pathString!)
        
        //Create a data object
        do{
            let data = try Data(contentsOf: url)
            //Decode data with json decoder
            let decoder = JSONDecoder()
            do{
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // Add the unique IDs
                for r in recipeData {
                    r.id = UUID()
                }
                return recipeData
            }catch{
                print(error)
            }
        }catch{
            print(error)
        }
        return [Recipe]()
    }
}
