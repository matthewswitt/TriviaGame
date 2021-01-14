//
//  ViewController2.swift
//  tableView
//
//  Created by Eric Falzone on 2019-06-10.
//  Copyright © 2019 Eric Falzone. All rights reserved.
//

import UIKit

class ViewControllerStoryWheel: UIViewController {
    let slices = Array(repeating: 0, count: 8)
    static var i = 0
    
    
    @IBOutlet weak var SpinnerImageView: SpinnerImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //disables and enables certain buttons
        for buttons in sixButtons {
            buttons.isHidden = true
        }
        clickToPlay.isHidden = true
        
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        SpinnerImageView.equalSlices = true
        SpinnerImageView.slices = slices
        let displaylink = CADisplayLink(target: self,selector: #selector(step))
        displaylink.add(to: .current, forMode: .defaultRunLoopMode)
    }
    
    //creates outlets
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var spinOutlet: UIButton!
    @IBOutlet weak var clickToPlay: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet var sixButtons: [UIButton]!
    
    //a function that finds where a number is and removes it
    func removeNumber(array: [Int], numberToRemove: Int) -> Int {
        var theIndex: Int = 0
        
        for (index,num) in array.enumerated() {
            if num == numberToRemove {
                theIndex = index
            }
        }
        
        return theIndex
    }
    
    //all buttons are shown when you land on choose your own and you segue when you chosose one
    @IBAction func allButtons(_ sender: UIButton) {
        performSegue(withIdentifier: "segueToQuestions2", sender: nil)
        for buttons in sixButtons {
            buttons.isHidden = true
        }
        self.spinOutlet.isUserInteractionEnabled = true
        clickToPlay.isHidden = true
        categoryLabel.text = "Category"
    }
    
    //when click to play is pressed
    @IBAction func clickToPlayAction(_ sender: UIButton) {
        
        //if a shuffled array is empty and it lands on that subject, an alert pops up and you have to spin again
        if shuffledMathArray.count == 0 && randomNumber == 0 || shuffledScienceArray.count == 0 && randomNumber == 1 || shuffledGeographyArray.count == 0 && randomNumber == 3 || shuffledHistoryArray.count == 0 && randomNumber == 2 || shuffledGOTArray.count == 0 && randomNumber == 4 || shuffledSportsArray.count == 0 && randomNumber == 7{
            let alert = UIAlertController(title: "OH NO!", message: "All questions from this subject have been used. Please spin again.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true)
        } else {
            performSegue(withIdentifier: "segueToQuestions2", sender: nil)
        }
        
       
        self.spinOutlet.isUserInteractionEnabled = true
        clickToPlay.isHidden = true
        categoryLabel.text = "Category"
        
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    @objc func step(displaylink: CADisplayLink) {
        //        print(SpinnerImageView.layerToAnimate.zPosition)
        
    }
    
    //if spin is pressed
    @IBAction func spinPressed(_ sender: UIButton) {
        //animates the spinner and a random number is generated
        randomNumber = Int.random(in: 0...7)
        SpinnerImageView.startAnimating()
        spinOutlet.isUserInteractionEnabled = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.025) {
            self.SpinnerImageView.startAnimating(fininshIndex: randomNumber, offset: CGFloat(-(360/self.slices.count)/2), { (finished) in
                
                //depending on the random number, a string is displayed and click to play is shown
                if randomNumber == 0 {
                    self.categoryLabel.text = "Math"
                    self.clickToPlay.isHidden = false
                } else if randomNumber == 1 {
                    self.categoryLabel.text = "Science"
                    self.clickToPlay.isHidden = false
                } else if randomNumber == 2 {
                    self.categoryLabel.text = "History"
                    self.clickToPlay.isHidden = false
                } else if randomNumber == 3 {
                    self.categoryLabel.text = "Geography"
                    self.clickToPlay.isHidden = false
                } else if randomNumber == 4 {
                    self.categoryLabel.text = "Game Of Thrones"
                    self.clickToPlay.isHidden = false
                } else if randomNumber == 5 {
                    self.categoryLabel.text = "Random"
                    self.clickToPlay.isHidden = false
                } else if randomNumber == 6 {
                    self.categoryLabel.text = "Choose Your Own"
                    for buttons in self.sixButtons{
                        buttons.isHidden = false
                    }
                    self.clickToPlay.isHidden = true
                } else if randomNumber == 7 {
                    self.categoryLabel.text = "Sports"
                    self.clickToPlay.isHidden = false
                }
            })
        }
            
        //if an array is empty, a certain number is removed
        if shuffledMathArray.isEmpty == true {
            var value = removeNumber(array: numbers2, numberToRemove: 0)
            numbers2.remove(at: value)
        }
        if shuffledScienceArray.isEmpty == true {
            var value1 = removeNumber(array: numbers2, numberToRemove: 1)
            numbers2.remove(at: value1)
        }
        if shuffledHistoryArray.isEmpty == true {
            var value2 = removeNumber(array: numbers2, numberToRemove: 2)
            numbers2.remove(at: value2)
        }
        if shuffledGeographyArray.isEmpty == true {
            var value3 = removeNumber(array: numbers2, numberToRemove: 3)
            numbers2.remove(at: value3)
        }
        if shuffledGOTArray.isEmpty == true {
            var value4 = removeNumber(array: numbers2, numberToRemove: 4)
            numbers2.remove(at: value4)
        }
        if shuffledSportsArray.isEmpty == true {
            var value5 = removeNumber(array: numbers2, numberToRemove: 7)
            numbers2.remove(at: value5)
        }
    
        //the first index is chosen
        shuffledNumbers2 = numbers2.shuffled()
        rand2 = shuffledNumbers2[0]
        
    }

    
    
    //depending on what button is chosen for choose your own, a random number is generated
    @IBAction func mathAction(_ sender: UIButton) {
        randomNumber = 0
    }
    
    @IBAction func scienceAction(_ sender: UIButton) {
        randomNumber = 1
    }
    
    @IBAction func historyAction(_ sender: UIButton) {
        randomNumber = 2
    }
    
    @IBAction func GOTAction(_ sender: UIButton) {
        randomNumber = 4
    }
    
    @IBAction func geoAction(_ sender: UIButton) {
        randomNumber = 3
    }
    
    
    @IBAction func sportsAction(_ sender: UIButton) {
        randomNumber = 7
    }
    
    //unwind segue
    @IBAction func unwindToWheel2(_ unwindSegue: UIStoryboardSegue){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //whatever the title is now, it transfers to the next view
        if navigationItem.title == "Level 1" {
            segue.destination.navigationItem.title = "Level 1"
        } else if navigationItem.title == "Level 2" {
            segue.destination.navigationItem.title = "Level 2"
        } else if navigationItem.title == "Level 3" {
            segue.destination.navigationItem.title = "Level 3"
        } else if navigationItem.title == "Level 4" {
            segue.destination.navigationItem.title = "Level 4"
        } else if navigationItem.title == "Level 5" {
            segue.destination.navigationItem.title = "Level 5"
        } else if navigationItem.title == "Level 6" {
            segue.destination.navigationItem.title = "Level 6"
        } else if navigationItem.title == "Level 7" {
            segue.destination.navigationItem.title = "Level 7"
        } else if navigationItem.title == "Level 8" {
            segue.destination.navigationItem.title = "Level 8"
        } else if navigationItem.title == "Level 9" {
            segue.destination.navigationItem.title = "Level 9"
        } else if navigationItem.title == "Level 10" {
            segue.destination.navigationItem.title = "Level 10"
        } else if navigationItem.title == "Level 11" {
            segue.destination.navigationItem.title = "Level 11"
        } else if navigationItem.title == "Level 12" {
            segue.destination.navigationItem.title = "Level 12"
        } else if navigationItem.title == "Level 13" {
            segue.destination.navigationItem.title = "Level 13"
        } else if navigationItem.title == "Level 14" {
            segue.destination.navigationItem.title = "Level 14"
        } else if navigationItem.title == "Level 15" {
            segue.destination.navigationItem.title = "Level 15"
        } else if navigationItem.title == "Level 16" {
            segue.destination.navigationItem.title = "Level 16"
        } else if navigationItem.title == "Level 17" {
            segue.destination.navigationItem.title = "Level 17"
        } else if navigationItem.title == "Level 18" {
            segue.destination.navigationItem.title = "Level 18"
        } else if navigationItem.title == "Level 19" {
            segue.destination.navigationItem.title = "Level 19"
        } else if navigationItem.title == "Level 20" {
            segue.destination.navigationItem.title = "Level 20"
        }
        
        
    }
}



