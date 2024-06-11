//
//  RecipeVC.swift

import UIKit

class RecipeVC: UIViewController {

    var recipes = ["pastrami.jpg", "tuna.jpg", "beef.jpg", "pecan.jpg", "sorbet.jpg", "pops.jpg"]
    var selectedType = "app"
    var recipeN = 1
    
    @IBOutlet weak var recipe1Lbl: UILabel!
    @IBOutlet weak var recipe1Img: UIImageView!
    
    @IBOutlet weak var recipe2Lbl: UILabel!
    @IBOutlet weak var recipe2Img: UIImageView!
    @IBOutlet weak var recipe2Btn: UIButton!
    
    @IBOutlet weak var recipe3Lbl: UILabel!
    @IBOutlet weak var recipe3Img: UIImageView!
    @IBOutlet weak var recipe3Btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipe3Lbl.isHidden = true
        recipe3Img.isHidden = true
        recipe3Btn.isHidden = true
        
        recipe1Lbl.text = "Pastrami Roll-Ups"
        recipe1Img.image = UIImage(named: recipes[0])
        
        recipe2Lbl.text = "Tuna Macaroni Salad"
        recipe2Img.image = UIImage(named: recipes[1])
        
    }
    
    
    @IBAction func typeSC(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            selectedType = "app"
            
            recipe2Lbl.isHidden = false
            recipe2Img.isHidden = false
            recipe2Btn.isHidden = false
            
            recipe3Lbl.isHidden = true
            recipe3Img.isHidden = true
            recipe3Btn.isHidden = true
            
            recipe1Lbl.text = "Pastrami Roll-Ups"
            recipe1Img.image = UIImage(named: recipes[0])
            
            recipe2Lbl.text = "Tuna Macaroni Salad"
            recipe2Img.image = UIImage(named: recipes[1])
            
        }
        else if sender.selectedSegmentIndex == 1 {
            selectedType = "main"
            
            recipe2Lbl.isHidden = true
            recipe2Img.isHidden = true
            recipe2Btn.isHidden = true
            
            recipe3Lbl.isHidden = true
            recipe3Img.isHidden = true
            recipe3Btn.isHidden = true
            
            recipe1Lbl.text = "Beef Stew"
            recipe1Img.image = UIImage(named: recipes[2])
            
        }
        else {
            selectedType = "dess"
            
            recipe2Lbl.isHidden = false
            recipe2Img.isHidden = false
            recipe2Btn.isHidden = false
            
            recipe3Lbl.isHidden = false
            recipe3Img.isHidden = false
            recipe3Btn.isHidden = false
            
            recipe1Lbl.text = "Pecan Caramel Candies"
            recipe1Img.image = UIImage(named: recipes[3])
            
            recipe2Lbl.text = "Quick Mango Sorbet"
            recipe2Img.image = UIImage(named: recipes[4])
            
            recipe3Lbl.text = "Fudge Pops"
            recipe3Img.image = UIImage(named: recipes[5])
            
        }
    }
    

    @IBAction func details1Btn(_ sender: UIButton) {
        recipeN = 1
        
    }
    
    @IBAction func details2Btn(_ sender: UIButton) {
        recipeN = 2
        
    }
    
    @IBAction func details3Btn(_ sender: UIButton) {
        recipeN = 3
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard let svc = segue.destination as? DetailsVC else { return }
        
        svc.recipeType = selectedType
        svc.recipeNum = recipeN
        
    }
}
