//
//  TimerVC.swift

import UIKit

class TimerVC: UIViewController {
    var timerCnt = 0
    var countDown = 0
    var timerActive = false
    var timer: Timer?
    var currDuration = 30
    var progressVal:Float = 0.0
    var recipeName = ""
    var pTime = 0
    var cTime = 0
    var rTime = 0
    
    @IBOutlet weak var timerLbl: UILabel!
    @IBOutlet weak var timerProgress: UIProgressView!
    @IBOutlet weak var recipeLbl: UILabel!
    @IBOutlet weak var stageLbl: UILabel!
    @IBOutlet weak var stepperStp: UIStepper!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if recipeName == "" {
            recipeLbl.text = "Recipe: (Select a recipe from recipe tab)"
            stepperStp.isEnabled = false
            startButton.isEnabled = false
            stopButton.isEnabled = false
            resetButton.isEnabled = false
            currDuration = 0
            
        }
        else {
            recipeLbl.text = "Recipe: " + recipeName
            stepperStp.isEnabled = true
            startButton.isEnabled = true
            stopButton.isEnabled = true
            resetButton.isEnabled = true
            stageLbl.text = "Stage: Prep"
            currDuration = pTime
            
        }
        countDown = currDuration
        timerLbl.text = String(countDown)
        
    }
    @IBAction func startBtn(_ sender: UIButton) {
        if timerActive == false {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
            
            timerActive = true
                        
        }
    }
    
    @IBAction func changeStage(_ sender: UIStepper) {
        if sender.value == 1 {
            stageLbl.text = "Stage: Prep"
            timer?.invalidate()
            timerActive = false
            timerProgress.setProgress(progressVal, animated: false)
            currDuration = pTime
            countDown = currDuration
            timerLbl.text = String(countDown)
            progressVal = 0
            timerProgress.setProgress(progressVal, animated: true)
            
        }
        else if sender.value == 2 {
            stageLbl.text = "Stage: Cook"
            timer?.invalidate()
            timerActive = false
            timerProgress.setProgress(progressVal, animated: false)
            currDuration = cTime
            countDown = currDuration
            timerLbl.text = String(countDown)
            progressVal = 0
            timerProgress.setProgress(progressVal, animated: true)
            
        }
        else {
            stageLbl.text = "Stage: Rest"
            timer?.invalidate()
            timerActive = false
            timerProgress.setProgress(progressVal, animated: false)
            currDuration = rTime
            countDown = currDuration
            timerLbl.text = String(countDown)
            progressVal = 0
            timerProgress.setProgress(progressVal, animated: true)
            
        }
    }
    
    @IBAction func stopBtn(_ sender: UIButton) {
        timer?.invalidate()
        timerActive = false
        timerProgress.setProgress(progressVal, animated: false)
        
    }
    
    @IBAction func resetBtn(_ sender: UIButton) {
        timerCnt = 0
        countDown = currDuration
        timerLbl.text = String(countDown)
        
        progressVal = 0
        timerProgress.setProgress(progressVal, animated: true)
        
        timerActive = false
        
    }
    
    @objc func fireTimer() {
        DispatchQueue.main.async() {
            if self.timerCnt == self.currDuration {
                self.timer?.invalidate()
                
            }
            else{
                self.timerCnt = self.timerCnt + 1
                self.countDown = self.countDown - 1
                self.timerLbl.text = String(self.countDown)
                self.updateProgress()
            }
        }
    }
    
    func updateProgress() {
        progressVal = Float(timerCnt)/Float(currDuration)
        timerProgress.setProgress(progressVal, animated: true)
        
        if progressVal >= 1.0 {
            timer?.invalidate()
            
        }
    }
    
    
}
