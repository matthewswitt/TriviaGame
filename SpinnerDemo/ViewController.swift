import UIKit

class ViewController: UIViewController {
   //some of this code was imported with the wheel
    let slices = Array(repeating: 0, count: 8)
   static var i = 0
    
    
    
    
    @IBOutlet weak var SpinnerImageView: SpinnerImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        SpinnerImageView.equalSlices = true
        SpinnerImageView.slices = slices
        let displaylink = CADisplayLink(target: self,selector: #selector(step))
        displaylink.add(to: .current, forMode: .defaultRunLoopMode)
        
        //disables, enabled certain buttons and sets names
        clickToPlayOutlet.isHidden = true
        for buttons in allButtons{
            buttons.isHidden = true
        }
        
       
        player1name.text = "\(playerONENAME)'s score: "
        player2name.text = "\(playerTWONAME)'s score: "
        
        turnOutlet.text = "It's \(playerONENAME)'s turn."
        whosturn = "player1"
    }
    
    //creates outlets
    @IBOutlet weak var spinOutlet: UIButton!
    @IBOutlet weak var clickToPlayOutlet: UIButton!
    @IBOutlet weak var categoryLabelOutlet: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet var allButtons: [UIButton]!
    @IBOutlet weak var player1name: UILabel!
    @IBOutlet weak var player2name: UILabel!
    @IBOutlet weak var player1score: UILabel!
    @IBOutlet weak var player2score: UILabel!
    @IBOutlet weak var turnOutlet: UILabel!
    
    
    //variables
    var numbers = [0,1,2,3,4,7]
    var shuffledNumbers: [Int] = []
    var rand = Int()
    var titleForNext = String()
    
    //function that removes a number from the array
    func removeNumber(array: [Int], numberToRemove: Int) -> Int {
        var theIndex: Int = 0
        
        for (index,num) in array.enumerated() {
            if num == numberToRemove {
                theIndex = index
            }
        }
        
        return theIndex
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        

    }

    @objc func step(displaylink: CADisplayLink) {
//        print(SpinnerImageView.layerToAnimate.zPosition)
        
    }
    
    //the names and scores are hidden
    func hideScores() {
        player1name.isHidden = true
        player2name.isHidden = true
        player1score.isHidden = true
        player2score.isHidden = true
    }
    
    //when the spin button is clicked
    @IBAction func Rotate(_ sender: UIButton) {
        //depending on a random number it lands on a slice and the button is now disabled
        randomNumber = Int.random(in: 0...7)
        SpinnerImageView.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.025) {
        self.spinOutlet.isUserInteractionEnabled = false
        self.SpinnerImageView.startAnimating(fininshIndex: randomNumber, offset: CGFloat(-(360/self.slices.count)/2), { (finished) in
        
            //if an array is empty, remove the number from an array
            if shuffledMathArray.isEmpty == true {
                var value = self.removeNumber(array: self.numbers, numberToRemove: 0)
                self.numbers.remove(at: value)
            }
            if shuffledScienceArray.isEmpty == true {
                var value1 = self.removeNumber(array: self.numbers, numberToRemove: 1)
                self.numbers.remove(at: value1)
            }
            if shuffledHistoryArray.isEmpty == true {
                var value2 = self.removeNumber(array: self.numbers, numberToRemove: 2)
                self.numbers.remove(at: value2)
            }
            if shuffledGeographyArray.isEmpty == true {
                var value3 = self.removeNumber(array: self.numbers, numberToRemove: 3)
                self.numbers.remove(at: value3)
            }
            if shuffledGOTArray.isEmpty == true {
                var value4 = self.removeNumber(array: self.numbers, numberToRemove: 4)
                self.numbers.remove(at: value4)
            }
            if shuffledSportsArray.isEmpty == true {
                var value5 = self.removeNumber(array: self.numbers, numberToRemove: 7)
                self.numbers.remove(at: value5)
            }
            
            //depending on the random number, text is displayed, click to play is shown and the function hide scores is called
            if randomNumber == 0 {
                self.categoryLabelOutlet.text = "Math"
                self.clickToPlayOutlet.isHidden = false
                self.hideScores()
            } else if randomNumber == 1 {
                self.categoryLabelOutlet.text = "Science"
                self.clickToPlayOutlet.isHidden = false
                self.hideScores()
            } else if randomNumber == 2 {
                self.categoryLabelOutlet.text = "History"
                self.clickToPlayOutlet.isHidden = false
                self.hideScores()
            } else if randomNumber == 3 {
                self.categoryLabelOutlet.text = "Geography"
                self.clickToPlayOutlet.isHidden = false
                self.hideScores()
            } else if randomNumber == 4 {
                self.categoryLabelOutlet.text = "Game Of Thrones"
                self.clickToPlayOutlet.isHidden = false
                self.hideScores()
            } else if randomNumber == 5 {
                if self.numbers.isEmpty == true {
                    print("no questions")
                } else {
                    self.categoryLabelOutlet.text = "Random"
                    self.shuffledNumbers = self.numbers.shuffled()
                    print(self.shuffledNumbers)
                    self.rand = self.shuffledNumbers[0]
                    print(self.rand)
                    self.clickToPlayOutlet.isHidden = false
                    self.hideScores()
                }
            } else if randomNumber == 6 {
                self.categoryLabelOutlet.text = "Choose Your Own"
                for buttons in self.allButtons{
                    buttons.isHidden = false
                }
                self.player1name.isHidden = true
                self.player2name.isHidden = true
                self.player1score.isHidden = true
                self.player2score.isHidden = true
                self.clickToPlayOutlet.isHidden = true
                self.hideScores()
            } else if randomNumber == 7 {
                self.categoryLabelOutlet.text = "Sports"
                self.clickToPlayOutlet.isHidden = false
                self.hideScores()
            }
            
        })
            //if all arrays are empty, the game stops
            if shuffledMathArray.isEmpty == true && shuffledScienceArray.isEmpty == true && shuffledHistoryArray.isEmpty == true && shuffledGeographyArray.isEmpty == true && shuffledMathArray.isEmpty == true && shuffledSportsArray.isEmpty == true {
                self.SpinnerImageView.stopAnimating()
                let alertToEndGame = UIAlertController(title: "GAME OVER", message: "All questions have been used. Please restart.", preferredStyle: .alert)
                alertToEndGame.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alertToEndGame, animated: true)
                self.clickToPlayOutlet.isHidden = true
                self.categoryLabelOutlet.text = nil
                self.hideScores()
                self.turnOutlet.isHidden = true
                self.navigationItem.setHidesBackButton(false, animated: true)
                
            }
        }
    }
    
    @IBAction func clickToPlay(_ sender: UIButton) {
        
        //if there are no questions left from an array and you land on a certain tile, you have to respin
        if shuffledMathArray.count == 0 && randomNumber == 0 || shuffledScienceArray.count == 0 && randomNumber == 1 || shuffledGeographyArray.count == 0 && randomNumber == 3 || shuffledHistoryArray.count == 0 && randomNumber == 2 || shuffledGOTArray.count == 0 && randomNumber == 4 || shuffledSportsArray.count == 0 && randomNumber == 7{
            let alert = UIAlertController(title: "DANG!", message: "All questions from this subject have been used. Please spin again.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true)
        } else {
            performSegue(withIdentifier: "segueToQuestion", sender: nil)
        }
        
        
        player1name.isHidden = false
        player2name.isHidden = false
        player1score.isHidden = false
        player2score.isHidden = false
        
        self.spinOutlet.isUserInteractionEnabled = true
        clickToPlayOutlet.isHidden = true
        categoryLabelOutlet.text = "Category"
        
        
        
    }
    
    //shown when choose your own is landed on
    @IBAction func allButtonsActioin(_ sender: UIButton) {
        titleForNext = sender.currentTitle!
        performSegue(withIdentifier: "segueToQuestion", sender: nil)
        for buttons in allButtons {
            buttons.isHidden = true
        }
        self.spinOutlet.isUserInteractionEnabled = true
        clickToPlayOutlet.isHidden = true
        categoryLabelOutlet.text = "Category"
        player1name.isHidden = false
        player2name.isHidden = false
        player1score.isHidden = false
        player2score.isHidden = false
    }
    
    //unwind segue to return to this view after you answer
    @IBAction func unwindToWheel(_ unwindSegue: UIStoryboardSegue){
        
        if playerOnesTurn == true{
            turnOutlet.text = "It's \(playerONENAME)'s turn."
            whosturn = "player1"
        } else if playerTwosTurn == true {
            turnOutlet.text = "It's \(playerTWONAME)'s turn."
            whosturn = "player2"
        }
        
        
        player1score.text = String(playerOneScore)
        player2score.text = String(playerTwoScore)
    }
    
    //prepare the next title based on the random number
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if randomNumber == 0 {
            segue.destination.navigationItem.title = "Math"
        } else if randomNumber == 1 {
            segue.destination.navigationItem.title = "Science"
        } else if randomNumber == 2 {
            segue.destination.navigationItem.title = "History"
        } else if randomNumber == 3 {
            segue.destination.navigationItem.title = "Geography"
        } else if randomNumber == 4 {
            segue.destination.navigationItem.title = "Game Of Thrones"
        } else if randomNumber == 5 {
            if rand == 0 {
                segue.destination.navigationItem.title = "Math"
            } else if rand == 1 {
                segue.destination.navigationItem.title = "Science"
            } else if rand == 2 {
                segue.destination.navigationItem.title = "History"
            } else if rand == 3 {
                segue.destination.navigationItem.title = "Geography"
            } else if rand == 4 {
                segue.destination.navigationItem.title = "Game Of Thrones"
            } else if rand == 7 {
                segue.destination.navigationItem.title = "Sports"
            }
        } else if randomNumber == 6 {
            segue.destination.navigationItem.title = "\(titleForNext)"
        } else if randomNumber == 7 {
            segue.destination.navigationItem.title = "Sports"
        }
    }
   
    
}

