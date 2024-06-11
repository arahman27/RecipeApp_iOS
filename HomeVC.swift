//
//  HomeVC.swift

import UIKit

class HomeVC: UIViewController {

    var recipes = ["tuna.jpg", "beef.jpg", "pops.jpg"]
    
    @IBOutlet weak var displayRecipes: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeDisplay(_ sender: UIPageControl) {
        displayRecipes.image = UIImage(named: recipes[sender.currentPage])
        
    }
}
