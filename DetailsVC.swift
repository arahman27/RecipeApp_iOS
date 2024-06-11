//
//  DetailsVC.swift

import UIKit

class DetailsVC: UIViewController {

    var recipeType: String?
    var recipeNum: Int?
    
    @IBOutlet weak var recipeLbl: UILabel!
    @IBOutlet weak var pTime: UILabel!
    @IBOutlet weak var rTime: UILabel!
    @IBOutlet weak var ingredientsLbl: UILabel!
    @IBOutlet weak var instructionsLbl: UILabel!
    @IBOutlet weak var cTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appRecipe1 = Recipe(recipeName: "Pastrami Roll-Ups", pTime: 2, cTime: 10, rTime: 3, instructions: "In a small bowl, mix cream cheese and blue cheese until blended. Spread about 1 teaspoon cheese mixture over each pastrami slice; top with a pickle spear. Roll up tightly. Cut each roll into 4 slices.", ingredients: "3/4 cup cream cheese, 1/2 cup crumbled blue cheese, 12 slices lean deli pastrami, 12 dill pickle spears")
        let appRecipe2 = Recipe(recipeName: "Tuna Macaroni Salad", pTime: 5, cTime: 10, rTime: 5, instructions: "Cook macaroni according to package directions; drain and rinse with cold water. Cool completely. For dressing, combine mayonnaise, relish, salt and pepper. In a large bowl, combine peas, onion, celery, tuna, eggs and macaroni. Add dressing; gently toss to coat. Refigerate until serving.", ingredients: "2 cups macaroni, 1 cup mayonnaise, 1/4 cup sweet pickle relish, 1/2 teaspoon salt, 1/4 teaspoon pepper, 1 cup peas, 1/2 cup onion, 1/2 celery, 1 can light tuna, 3 boiled eggs")
        let mainRecipe1 = Recipe(recipeName: "Beef Stew", pTime: 20, cTime: 100, rTime: 60, instructions: "Toss beef with flour, salt and pepper. In a large skillet, heat oil over medium-high heat. Brown beef in batches. Transfer beef to slow cooker with slotted spoon. Reduce heat to medium. To same skillted add tomato paste and garlic. Cook and stor 1 minute. Add beer to skillet, stirring to loosen browned bits from pan. Transfer to slow cooker. Stir in broth and thyme. Cook, covered, on low until beef and vegetables are tender.", ingredients: "3 medium potatoes, 3 medium carrots, 2 medium onions, 2 medium, parsnips, 2 celery ribs, 1 boneless beef chuck roast, 1/2 flour, 1-3/4 teaspoons salt, 3/4 teaspoon pepper, 2 tablespoons olive oil, 1 can tomata paste, 2 garlic cloves, 1 Guinness stout or beef broth, 2 teaspoons thyme, minced parsley")
        let dessRecipe1 = Recipe(recipeName: "Pecan Caramel Candies", pTime: 30, cTime: 5, rTime: 5, instructions: "Preheat oven to 250 degrees. Place pretzels 1 in. apart on foil=lined baking sheets. Top each with Rolo candy. Bake 3-4 minutes or until candies are softened. Immediately top with pecans, pressing to spread candy into pretzel. Let stand until set.", ingredients: "54 pretzels, 54 Rolo candies, 54 pecan halves")
        let dessRecipe2 = Recipe(recipeName: "Quick Mango Sorbet", pTime: 2, cTime: 5, rTime: 3, instructions: "Place all ingredients in a blender; cover and process until smooth. Server immediately. If desired, for a firmer texture, cover and freeze at least 3 hours.", ingredients: "16 ounces frozen mango chunks, 1/2 cup passion fruit juice, 2 tablespoons sugar")
        let dessRecipe3 = Recipe(recipeName: "Fudge Pops", pTime: 20, cTime: 10, rTime: 10, instructions: "In a larger bowl, whisk milk and pudding mix. Heat up the mix for 4-6 minutes until bubbling, stirring every 2 minutes. Cool for 20 minutes, stirrng several times. Meanwhile, combine peanuts and chocolate chips; divide among paper cups. Stir marshmallow creme into pudding; spoon into cups. Insert wooden pop sticks; freeze.", ingredients: "2-1/2 cups 2% milk, 1 package chocoloate pudding mix, 1/2 cup peanuts, 1/2 cup chocolate chips, 12 paper cups, 1/2 cup marshmallow creme, 12 wooden pop sticks")
        
        if recipeType == "app" && recipeNum == 1 {
            recipeLbl.text = appRecipe1.recipeName
            pTime.text = String(appRecipe1.prepTime)
            cTime.text = String(appRecipe1.cookTime)
            rTime.text = String(appRecipe1.restTime)
            instructionsLbl.text = appRecipe1.instructions
            ingredientsLbl.text = appRecipe1.ingredients
            
        }
        else if recipeType == "app" && recipeNum == 2 {
            recipeLbl.text = appRecipe2.recipeName
            pTime.text = String(appRecipe2.prepTime)
            cTime.text = String(appRecipe2.cookTime)
            rTime.text = String(appRecipe2.restTime)
            instructionsLbl.text = appRecipe2.instructions
            ingredientsLbl.text = appRecipe2.ingredients
            
        }
        else if recipeType == "main" {
            recipeLbl.text = mainRecipe1.recipeName
            pTime.text = String(mainRecipe1.prepTime)
            cTime.text = String(mainRecipe1.cookTime)
            rTime.text = String(mainRecipe1.restTime)
            instructionsLbl.text = mainRecipe1.instructions
            ingredientsLbl.text = mainRecipe1.ingredients
            
        }
        else if recipeType == "dess" && recipeNum == 1 {
            recipeLbl.text = dessRecipe1.recipeName
            pTime.text = String(dessRecipe1.prepTime)
            cTime.text = String(dessRecipe1.cookTime)
            rTime.text = String(dessRecipe1.restTime)
            instructionsLbl.text = dessRecipe1.instructions
            ingredientsLbl.text = dessRecipe1.ingredients
            
        }
        else if recipeType == "dess" && recipeNum == 2 {
            recipeLbl.text = dessRecipe2.recipeName
            pTime.text = String(dessRecipe2.prepTime)
            cTime.text = String(dessRecipe2.cookTime)
            rTime.text = String(dessRecipe2.restTime)
            instructionsLbl.text = dessRecipe2.instructions
            ingredientsLbl.text = dessRecipe2.ingredients
            
        }
        else if recipeType == "dess" && recipeNum == 3 {
            recipeLbl.text = dessRecipe3.recipeName
            pTime.text = String(dessRecipe3.prepTime)
            cTime.text = String(dessRecipe3.cookTime)
            rTime.text = String(dessRecipe3.restTime)
            instructionsLbl.text = dessRecipe3.instructions
            ingredientsLbl.text = dessRecipe3.ingredients
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard let svc = segue.destination as? TimerVC else { return }
        
        svc.recipeName = recipeLbl.text ?? ""
        svc.pTime = Int(pTime.text ?? "") ?? 0
        svc.cTime = Int(cTime.text ?? "") ?? 0
        svc.rTime = Int(rTime.text ?? "" ) ?? 0
        
    }
    
}
