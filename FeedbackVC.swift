//
//  FeedbackVC.swift

import UIKit

class FeedbackVC: UIViewController {

    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var recipeTF: UITextField!
    @IBOutlet weak var errLbl: UILabel!
    @IBOutlet weak var successLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        successLbl.isHidden = true
        
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        ratingLbl.text = String(Int(sender.value.rounded(.down))) + "/10"
    
    }
    
    @IBAction func submitReview(_ sender: UIButton) {
        if recipeTF.text?.isEmpty == true {
            errLbl.text = "Please enter the recipe name"
            
        }
        else {
            successLbl.isHidden = false
            
        }
    }
}
