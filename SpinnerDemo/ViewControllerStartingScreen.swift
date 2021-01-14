

import UIKit

class ViewControllerStartingScreen: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        //when the view loads all arrays become shuffled
        shuffledMathArray = mathArray.shuffled()
        shuffledScienceArray = scienceArray.shuffled()
        shuffledHistoryArray = HistoryArray.shuffled()
        shuffledGOTArray = GOTArray.shuffled()
        shuffledSportsArray = sportsArray.shuffled()
        shuffledGeographyArray = geographyArray.shuffled()
        
        //dismisses keyboard
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        
    }
    
    //creates outlets
    @IBOutlet weak var leaderboardOutlet: UIButton!
    @IBOutlet weak var ovoOutlet: UIButton!
    @IBOutlet weak var playerOneName: UITextField!
    @IBOutlet weak var playerTwoName: UITextField!
    
    //reshuffles all question arrays and resets player one and two scores
    @IBAction func unwindToHome(_ unwindSegue: UIStoryboardSegue){
        playerOneScore = 0
        playerTwoScore = 0
        shuffledMathArray = mathArray.shuffled()
        shuffledScienceArray = scienceArray.shuffled()
        shuffledHistoryArray = HistoryArray.shuffled()
        shuffledGOTArray = GOTArray.shuffled()
        shuffledSportsArray = sportsArray.shuffled()
        shuffledGeographyArray = geographyArray.shuffled()
        
        
    }
    
    //reshuffles all question arrays
    @IBAction func unwindFromTimeToHome(_ unwindSegue: UIStoryboardSegue){
        shuffledMathArray = mathArray.shuffled()
        shuffledScienceArray = scienceArray.shuffled()
        shuffledGOTArray = GOTArray.shuffled()
        shuffledSportsArray = sportsArray.shuffled()
        shuffledHistoryArray = HistoryArray.shuffled()
        shuffledGeographyArray = geographyArray.shuffled()
    }
    
    //reshuffles all question arrays, resets lives, correct answers and boolean values
    @IBAction func unwindFromStoryToHome(_ unwindSegue: UIStoryboardSegue){
        levelOne = true
        levelTwo = false
        levelThree = false
        levelFour = false
        levelFive = false
        levelSix = false
        levelSeven = false
        levelEight = false
        levelNine = false
        levelTen = false
        levelEleven = false
        levelTwelve = false
        levelThirteen = false
        levelFourteen = false
        levelFifteen = false
        levelSixteen = false
        levelSeventeen = false
        levelEighteen = false
        levelNineteen = false
        levelTwenty = false
        livesLeft = 3
        correctForStory = 0
        shuffledMathArray = mathArray.shuffled()
        shuffledScienceArray = scienceArray.shuffled()
        shuffledGOTArray = GOTArray.shuffled()
        shuffledSportsArray = sportsArray.shuffled()
        shuffledHistoryArray = HistoryArray.shuffled()
        shuffledGeographyArray = geographyArray.shuffled()
    }
    
    //transfers the names and if one of the text fields are empty, an alert pops up
    @IBAction func vs1Action(_ sender: UIButton) {
        
        if playerOneName.text == "" || playerTwoName.text == "" {
            let alert = UIAlertController(title: "Warning", message: "Please fill out both names", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default
                , handler: nil))
            present(alert, animated: true)
        } else {
            performSegue(withIdentifier: "1vs1Segue", sender: nil)
            playerONENAME = playerOneName.text!
            playerTWONAME = playerTwoName.text!
        }
        
        
        
    }
    
    //perform a segue when timed mode is clicked
    @IBAction func timedMode(_ sender: UIButton) {
        
            performSegue(withIdentifier: "segueToTimed", sender: nil)
        
        
    }
    //perform a segue when leaderboard is clicked
    @IBAction func leaderboard(_ sender: UIButton) {
        performSegue(withIdentifier: "segueToLeaderboard", sender: nil)
    }
    
    //perform a segue when story mode is clicked
    @IBAction func storyMode(_ sender: UIButton) {
        
        performSegue(withIdentifier: "segueToCells", sender: nil)
        
        
    }
    
    //perform a segue when rules is clicked
    @IBAction func toRules(_ sender: UIButton) {
        
        performSegue(withIdentifier: "segueToRules", sender: nil)
    }
    
    
    
    
    
}
