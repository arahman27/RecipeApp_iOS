//
//  Recipe.swift

import Foundation

class Recipe {
    
    var recipeName: String = ""
    var prepTime = 0
    var cookTime = 0
    var restTime = 0
    var instructions: String = ""
    var ingredients: String = ""
    
    init(recipeName: String, pTime: Int, cTime: Int, rTime: Int, instructions: String, ingredients: String) {
        self.recipeName = recipeName
        self.prepTime = pTime
        self.cookTime = cTime
        self.restTime = rTime
        self.instructions = instructions
        self.ingredients = ingredients
    }
}
