

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //hides and disables certain things
        continueOutlet.isHidden = true
        turn.isHidden = true
        turn.text = whosturn
        for buttons in allButtons{
            buttons.isUserInteractionEnabled = true
        }
        returnToMain.isHidden = true
        
        //if the title is something, a certain subject's question is displayed
        if navigationItem.title == "Math"{
            questionLabel.text = shuffledMathArray[0]
            shuffledMathArray.remove(at: 0)
        } else if navigationItem.title == "Science" {
            questionLabel.text = shuffledScienceArray[0]
            shuffledScienceArray.remove(at: 0)
        } else if navigationItem.title == "History" {
            questionLabel.text = shuffledHistoryArray[0]
            shuffledHistoryArray.remove(at: 0)
        } else if navigationItem.title == "Geography" {
            questionLabel.text = shuffledGeographyArray[0]
            shuffledGeographyArray.remove(at: 0)
        } else if navigationItem.title == "Game Of Thrones" {
            questionLabel.text = shuffledGOTArray[0]
            shuffledGOTArray.remove(at: 0)
        } else if navigationItem.title == "Sports" {
            questionLabel.text = shuffledSportsArray[0]
            shuffledSportsArray.remove(at: 0)
        }
        
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        //based on the question displayed, certain answers are displayed
        if questionLabel.text == mathArray[0]{
            setAnswers(array: answersMath1)
        } else if questionLabel.text == mathArray[1]{
            setAnswers(array: answersMath2)
        } else if questionLabel.text == mathArray[2]{
            setAnswers(array: answersMath3)
        } else if questionLabel.text == mathArray[3]{
            setAnswers(array: answersMath4)
        } else if questionLabel.text == mathArray[4]{
            setAnswers(array: answersMath5)
        } else if questionLabel.text == mathArray[5]{
            setAnswers(array: answersMath6)
        } else if questionLabel.text == mathArray[6]{
            setAnswers(array: answersMath7)
        } else if questionLabel.text == mathArray[7]{
            setAnswers(array: answersMath8)
        } else if questionLabel.text == mathArray[8]{
            setAnswers(array: answersMath9)
        } else if questionLabel.text == mathArray[9]{
            setAnswers(array: answersMath10)
        } else if questionLabel.text == mathArray[10]{
            setAnswers(array: answersMath11)
        } else if questionLabel.text == mathArray[11]{
            setAnswers(array: answersMath12)
        } else if questionLabel.text == mathArray[12]{
            setAnswers(array: answersMath13)
        } else if questionLabel.text == mathArray[13]{
            setAnswers(array: answersMath14)
        } else if questionLabel.text == mathArray[14]{
            setAnswers(array: answersMath15)
        } else if questionLabel.text == mathArray[15]{
            setAnswers(array: answersMath16)
        } else if questionLabel.text == mathArray[16]{
            setAnswers(array: answersMath17)
        } else if questionLabel.text == mathArray[17]{
            setAnswers(array: answersMath18)
        } else if questionLabel.text == mathArray[18]{
            setAnswers(array: answersMath19)
        } else if questionLabel.text == mathArray[19]{
            setAnswers(array: answersMath20)
        } else if questionLabel.text == mathArray[20]{
            setAnswers(array: answersMath21)
        } else if questionLabel.text == mathArray[21]{
            setAnswers(array: answersMath22)
        } else if questionLabel.text == mathArray[22]{
            setAnswers(array: answersMath23)
        } else if questionLabel.text == mathArray[23]{
            setAnswers(array: answersMath24)
        } else if questionLabel.text == mathArray[24]{
            setAnswers(array: answersMath25)
        } else if questionLabel.text == scienceArray[0]{
            setAnswers(array: answersScience1)
        } else if questionLabel.text == scienceArray[1]{
            setAnswers(array: answersScience2)
        } else if questionLabel.text == scienceArray[2]{
            setAnswers(array: answersScience3)
        } else if questionLabel.text == scienceArray[3]{
            setAnswers(array: answersScience4)
        } else if questionLabel.text == scienceArray[4]{
            setAnswers(array: answersScience5)
        } else if questionLabel.text == scienceArray[5]{
            setAnswers(array: answersScience6)
        } else if questionLabel.text == scienceArray[6]{
            setAnswers(array: answersScience7)
        } else if questionLabel.text == scienceArray[7]{
            setAnswers(array: answersScience8)
        } else if questionLabel.text == scienceArray[8]{
            setAnswers(array: answersScience9)
        } else if questionLabel.text == scienceArray[9]{
            setAnswers(array: answersScience10)
        } else if questionLabel.text == scienceArray[10]{
            setAnswers(array: answersScience11)
        } else if questionLabel.text == scienceArray[11]{
            setAnswers(array: answersScience12)
        } else if questionLabel.text == scienceArray[12]{
            setAnswers(array: answersScience13)
        } else if questionLabel.text == scienceArray[13]{
            setAnswers(array: answersScience14)
        } else if questionLabel.text == scienceArray[14]{
            setAnswers(array: answersScience15)
        } else if questionLabel.text == scienceArray[15]{
            setAnswers(array: answersScience16)
        } else if questionLabel.text == scienceArray[16]{
            setAnswers(array: answersScience17)
        } else if questionLabel.text == scienceArray[17]{
            setAnswers(array: answersScience18)
        } else if questionLabel.text == scienceArray[18]{
            setAnswers(array: answersScience19)
        } else if questionLabel.text == scienceArray[19]{
            setAnswers(array: answersScience20)
        } else if questionLabel.text == scienceArray[20]{
            setAnswers(array: answersScience21)
        } else if questionLabel.text == scienceArray[21]{
            setAnswers(array: answersScience22)
        } else if questionLabel.text == scienceArray[22]{
            setAnswers(array: answersScience23)
        } else if questionLabel.text == scienceArray[23]{
            setAnswers(array: answersScience24)
        } else if questionLabel.text == scienceArray[24]{
            setAnswers(array: answersScience25)
        } else if questionLabel.text == geographyArray[0]{
            setAnswers(array: geoAnswer1)
        } else if questionLabel.text == geographyArray[1]{
            setAnswers(array: geoAnswer2)
        } else if questionLabel.text == geographyArray[2]{
            setAnswers(array: geoAnswer3)
        } else if questionLabel.text == geographyArray[3]{
            setAnswers(array: geoAnswer4)
        } else if questionLabel.text == geographyArray[4]{
            setAnswers(array: geoAnswer5)
        } else if questionLabel.text == geographyArray[5]{
            setAnswers(array: geoAnswer6)
        } else if questionLabel.text == geographyArray[6]{
            setAnswers(array: geoAnswer7)
        } else if questionLabel.text == geographyArray[7]{
            setAnswers(array: geoAnswer8)
        } else if questionLabel.text == geographyArray[8]{
            setAnswers(array: geoAnswer9)
        } else if questionLabel.text == geographyArray[9]{
            setAnswers(array: geoAnswer10)
        } else if questionLabel.text == geographyArray[10]{
            setAnswers(array: geoAnswer11)
        } else if questionLabel.text == geographyArray[11]{
            setAnswers(array: geoAnswer12)
        } else if questionLabel.text == geographyArray[12]{
            setAnswers(array: geoAnswer13)
        } else if questionLabel.text == geographyArray[13]{
            setAnswers(array: geoAnswer14)
        } else if questionLabel.text == geographyArray[14]{
            setAnswers(array: geoAnswer15)
        } else if questionLabel.text == geographyArray[15]{
            setAnswers(array: geoAnswer16)
        } else if questionLabel.text == geographyArray[16]{
            setAnswers(array: geoAnswer17)
        } else if questionLabel.text == geographyArray[17]{
            setAnswers(array: geoAnswer18)
        } else if questionLabel.text == geographyArray[18]{
            setAnswers(array: geoAnswer19)
        } else if questionLabel.text == geographyArray[19]{
            setAnswers(array: geoAnswer20)
        } else if questionLabel.text == geographyArray[20]{
            setAnswers(array: geoAnswer21)
        } else if questionLabel.text == geographyArray[21]{
            setAnswers(array: geoAnswer22)
        } else if questionLabel.text == geographyArray[22]{
            setAnswers(array: geoAnswer23)
        } else if questionLabel.text == geographyArray[23]{
            setAnswers(array: geoAnswer24)
        } else if questionLabel.text == geographyArray[24]{
            setAnswers(array: geoAnswer25)
        } else if questionLabel.text == sportsArray[0]{
            setAnswers(array: sportsAnswer1)
        } else if questionLabel.text == sportsArray[1]{
            setAnswers(array: sportsAnswer2)
        } else if questionLabel.text == sportsArray[2]{
            setAnswers(array: sportsAnswer3)
        } else if questionLabel.text == sportsArray[3]{
            setAnswers(array: sportsAnswer4)
        } else if questionLabel.text == sportsArray[4]{
            setAnswers(array: sportsAnswer5)
        } else if questionLabel.text == sportsArray[5]{
            setAnswers(array: sportsAnswer6)
        } else if questionLabel.text == sportsArray[6]{
            setAnswers(array: sportsAnswer7)
        } else if questionLabel.text == sportsArray[7]{
            setAnswers(array: sportsAnswer8)
        } else if questionLabel.text == sportsArray[8]{
            setAnswers(array: sportsAnswer9)
        } else if questionLabel.text == sportsArray[9]{
            setAnswers(array: sportsAnswer10)
        } else if questionLabel.text == sportsArray[10]{
            setAnswers(array: sportsAnswer11)
        } else if questionLabel.text == sportsArray[11]{
            setAnswers(array: sportsAnswer12)
        } else if questionLabel.text == sportsArray[12]{
            setAnswers(array: sportsAnswer13)
        } else if questionLabel.text == sportsArray[13]{
            setAnswers(array: sportsAnswer14)
        } else if questionLabel.text == sportsArray[14]{
            setAnswers(array: sportsAnswer15)
        } else if questionLabel.text == sportsArray[15]{
            setAnswers(array: sportsAnswer16)
        } else if questionLabel.text == sportsArray[16]{
            setAnswers(array: sportsAnswer17)
        } else if questionLabel.text == sportsArray[17]{
            setAnswers(array: sportsAnswer18)
        } else if questionLabel.text == sportsArray[18]{
            setAnswers(array: sportsAnswer19)
        } else if questionLabel.text == sportsArray[19]{
            setAnswers(array: sportsAnswer20)
        } else if questionLabel.text == sportsArray[20]{
            setAnswers(array: sportsAnswer21)
        } else if questionLabel.text == sportsArray[21]{
            setAnswers(array: sportsAnswer22)
        } else if questionLabel.text == sportsArray[22]{
            setAnswers(array: sportsAnswer23)
        } else if questionLabel.text == sportsArray[23]{
            setAnswers(array: sportsAnswer24)
        } else if questionLabel.text == sportsArray[24]{
            setAnswers(array: sportsAnswer25)
        } else if questionLabel.text == HistoryArray[0]{
            setAnswers(array: historyAnswers1)
        } else if questionLabel.text == HistoryArray[1]{
            setAnswers(array: historyAnswers2)
        } else if questionLabel.text == HistoryArray[2]{
            setAnswers(array: historyAnswers3)
        } else if questionLabel.text == HistoryArray[3]{
            setAnswers(array: historyAnswers4)
        } else if questionLabel.text == HistoryArray[4]{
            setAnswers(array: historyAnswers5)
        } else if questionLabel.text == HistoryArray[5]{
            setAnswers(array: historyAnswers6)
        } else if questionLabel.text == HistoryArray[6]{
            setAnswers(array: historyAnswers7)
        } else if questionLabel.text == HistoryArray[7]{
            setAnswers(array: historyAnswers8)
        } else if questionLabel.text == HistoryArray[8]{
            setAnswers(array: historyAnswers9)
        } else if questionLabel.text == HistoryArray[9]{
            setAnswers(array: historyAnswers10)
        } else if questionLabel.text == HistoryArray[10]{
            setAnswers(array: historyAnswers11)
        } else if questionLabel.text == HistoryArray[11]{
            setAnswers(array: historyAnswers12)
        } else if questionLabel.text == HistoryArray[12]{
            setAnswers(array: historyAnswers13)
        } else if questionLabel.text == HistoryArray[13]{
            setAnswers(array: historyAnswers14)
        } else if questionLabel.text == HistoryArray[14]{
            setAnswers(array: historyAnswers15)
        } else if questionLabel.text == HistoryArray[15]{
            setAnswers(array: historyAnswers16)
        } else if questionLabel.text == HistoryArray[16]{
            setAnswers(array: historyAnswers17)
        } else if questionLabel.text == HistoryArray[17]{
            setAnswers(array: historyAnswers18)
        } else if questionLabel.text == HistoryArray[18]{
            setAnswers(array: historyAnswers19)
        } else if questionLabel.text == HistoryArray[19]{
            setAnswers(array: historyAnswers20)
        } else if questionLabel.text == HistoryArray[20]{
            setAnswers(array: historyAnswers21)
        } else if questionLabel.text == HistoryArray[21]{
            setAnswers(array: historyAnswers22)
        } else if questionLabel.text == HistoryArray[22]{
            setAnswers(array: historyAnswers23)
        } else if questionLabel.text == HistoryArray[23]{
            setAnswers(array: historyAnswers24)
        } else if questionLabel.text == HistoryArray[24]{
            setAnswers(array: historyAnswers25)
        } else if questionLabel.text == GOTArray[0]{
            setAnswers(array: GOTanswers1)
        } else if questionLabel.text == GOTArray[1]{
            setAnswers(array: GOTanswers2)
        } else if questionLabel.text == GOTArray[2]{
            setAnswers(array: GOTanswers3)
        } else if questionLabel.text == GOTArray[3]{
            setAnswers(array: GOTanswers4)
        } else if questionLabel.text == GOTArray[4]{
            setAnswers(array: GOTanswers5)
        } else if questionLabel.text == GOTArray[5]{
            setAnswers(array: GOTanswers6)
        } else if questionLabel.text == GOTArray[6]{
            setAnswers(array: GOTanswers7)
        } else if questionLabel.text == GOTArray[7]{
            setAnswers(array: GOTanswers8)
        } else if questionLabel.text == GOTArray[8]{
            setAnswers(array: GOTanswers9)
        } else if questionLabel.text == GOTArray[9]{
            setAnswers(array: GOTanswers10)
        } else if questionLabel.text == GOTArray[10]{
            setAnswers(array: GOTanswers11)
        } else if questionLabel.text == GOTArray[11]{
            setAnswers(array: GOTanswers12)
        } else if questionLabel.text == GOTArray[12]{
            setAnswers(array: GOTanswers13)
        } else if questionLabel.text == GOTArray[13]{
            setAnswers(array: GOTanswers14)
        } else if questionLabel.text == GOTArray[14]{
            setAnswers(array: GOTanswers15)
        } else if questionLabel.text == GOTArray[15]{
            setAnswers(array: GOTanswers16)
        } else if questionLabel.text == GOTArray[16]{
            setAnswers(array: GOTanswers17)
        } else if questionLabel.text == GOTArray[17]{
            setAnswers(array: GOTanswers18)
        } else if questionLabel.text == GOTArray[18]{
            setAnswers(array: GOTanswers19)
        } else if questionLabel.text == GOTArray[19]{
            setAnswers(array: GOTanswers20)
        } else if questionLabel.text == GOTArray[20]{
            setAnswers(array: GOTanswers21)
        } else if questionLabel.text == GOTArray[21]{
            setAnswers(array: GOTanswers22)
        } else if questionLabel.text == GOTArray[22]{
            setAnswers(array: GOTanswers23)
        } else if questionLabel.text == GOTArray[23]{
            setAnswers(array: GOTanswers24)
        } else if questionLabel.text == GOTArray[24]{
            setAnswers(array: GOTanswers25)
        }
        
        //creates a timer
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    //creates outlets
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var continueOutlet: UIButton!
    @IBOutlet var allButtons: [UIButton]!
    @IBOutlet weak var turn: UILabel!
    @IBOutlet weak var returnToMain: UIButton!
    @IBOutlet weak var timeRemaining: UILabel!
    
    //creates a timer and the amount of seconds
    var timer = Timer()
    var myTime = 20
    
    //this function starts when the view loads
    @objc func timerFunction() {
        
        //seconds go down by one
        myTime -= 1
        timeRemaining.text = String(myTime)
        
        //seconds is zero, timer stops and an alert shows up
        if myTime == 0 {
            timer.invalidate()
            continueOutlet.isHidden = false
            let alert = UIAlertController(title: "Out Of Time", message: "You didn't answer the question quickly enough.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true)
            for buttons in allButtons{
                buttons.isUserInteractionEnabled = false
                if correctAnswers.contains(buttons.currentTitle!){
                        buttons.backgroundColor = UIColor.green
                }
                
            }
            correct = false
        }

    }
 
    
    //shuffles answers and displays them
    func setAnswers(array: [String]) {
        shuffledarray = array.shuffled()
        button1.setTitle(shuffledarray[0], for: .normal)
        button2.setTitle(shuffledarray[1], for: .normal)
        button3.setTitle(shuffledarray[2], for: .normal)
        button4.setTitle(shuffledarray[3], for: .normal)
    }
    
    //when an answer is chosen
    @IBAction func allButtonAction(_ sender: UIButton) {
        
        //if it's correct, the button is green and a player's score goes up but if you are wrong, the button's back goes red and the right one goes green
        if correctAnswers.contains(sender.title(for: .normal)!){
            correct = true
            if turn.text == "player1"{
                playerOneScore += 1
            } else if turn.text == "player2"{
                playerTwoScore += 1
            }
            sender.backgroundColor = UIColor.green
        } else {
            correct = false
            sender.backgroundColor = UIColor.red
            for buttons in allButtons{
                if correctAnswers.contains(buttons.currentTitle!){
                    buttons.backgroundColor = UIColor.green
                }
            }
        }
        
        //delays this code by one second
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            //if player one score is five, they win and an alert pops up
            if playerOneScore == 5 {
                self.continueOutlet.isHidden = true
                let winalert = UIAlertController(title: "Congratulations!", message: "\(playerONENAME) wins 5 to \(playerTwoScore).", preferredStyle: .alert)
                winalert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(winalert, animated: true)
                self.returnToMain.isHidden = false
                for buttons in self.allButtons{
                    buttons.isHidden = true
                }
                self.turn.isHidden = true
                self.questionLabel.isHidden = true
                
            //if player two's score is five, they win and an alert pops up
            } else if playerTwoScore == 5 {
                self.continueOutlet.isHidden = true
                let winalert = UIAlertController(title: "Congratulations!", message: "\(playerTWONAME) wins 5 to \(playerOneScore).", preferredStyle: .alert)
                winalert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(winalert, animated: true)
                self.returnToMain.isHidden = false
                for buttons in self.allButtons{
                    buttons.isHidden = true
                }
                self.turn.isHidden = true
                self.questionLabel.isHidden = true
            }
        }
        
        //buttons are disabled
        for buttons in allButtons{
            buttons.isUserInteractionEnabled = false
        }
        
        //timer is disabled
        timer.invalidate()
        continueOutlet.isHidden = false
        
        
        
        
    }
    
    //continue action that determines whos turn it is and shuffled array is emptied
    @IBAction func continueAction(_ sender: UIButton) {
        
        if turn.text == "player1" && correct == true {
            playerOnesTurn = true
            playerTwosTurn = false
        } else if turn.text == "player2" && correct == true {
            playerOnesTurn = false
            playerTwosTurn = true
        } else if turn.text == "player1" && correct == false {
            playerOnesTurn = false
            playerTwosTurn = true
        } else if turn.text == "player2" && correct == false {
            playerOnesTurn = true
            playerTwosTurn = false
        }
        
        shuffledarray.removeAll()
        
    }
    
}
