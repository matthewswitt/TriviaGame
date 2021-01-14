

import UIKit

class ViewControllerTimed: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        buttonToGoHome.isHidden = true
        
        randomNumber = Int.random(in: 0...5)
        
        //depending what the random number is, take a questions from a certain array
        if randomNumber == 0{
            questionLabel.text = shuffledMathArray[0]
            shuffledMathArray.remove(at: 0)
        } else if randomNumber == 1 {
            questionLabel.text = shuffledScienceArray[0]
            shuffledScienceArray.remove(at: 0)
        } else if randomNumber == 2{
            questionLabel.text = shuffledHistoryArray[0]
            shuffledHistoryArray.remove(at: 0)
            print(shuffledHistoryArray.count)
        } else if randomNumber == 3{
            questionLabel.text = shuffledGeographyArray[0]
            shuffledGeographyArray.remove(at: 0)
            print(shuffledGeographyArray.count)
        } else if randomNumber == 4{
            questionLabel.text = shuffledGOTArray[0]
            shuffledGOTArray.remove(at: 0)
            print(shuffledGOTArray.count)
        } else if randomNumber == 5 {
            questionLabel.text = shuffledSportsArray[0]
            shuffledSportsArray.remove(at: 0)
            print(shuffledSportsArray.count)
        }
        
        //based on the question, certain answers are displayed
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
        
        //creates three timers
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction1), userInfo: nil, repeats: true)
        timer2 = Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(timerFunction2), userInfo: nil, repeats: true)
        timer3 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction3), userInfo: nil, repeats: false)
        
        
    }
    
    //reloads the saved array
    func loadData() {
        if let loadNames: [String] = UserDefaults.standard.value(forKey: "save2") as? [String] {
            savedData2 = loadNames
        }
    }
    
    //creates variables to save scores and names
    var savedData2: [String] = []
    var savedScores2 = UserDefaults.standard
    var superScore = ""
    
    //allows access to the leaderboard
    let leaderboard = ViewControllerLeaderboard()
    
    //sets timers, minutes and seconds as well as an array for when it lands on random
    var timer = Timer()
    var seconds = 60
    var timer2 = Timer()
    var minutes = 2
    var timer3 = Timer()
    var score = 0
    var numbers = [0,1,2,3,4,5]
    var shuffledNumbers: [Int] = []
    
    //creates the outlets
    @IBOutlet weak var minutesOutlet: UILabel!
    @IBOutlet weak var secondOutlet: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet var allButtons: [UIButton]!
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var scoreOutlet: UILabel!
    @IBOutlet weak var colon: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var buttonToGoHome: UIButton!
    
    //starts when the view loads
    @objc func timerFunction1() {
        
        //seconds go down by 1 every second
        seconds -= 1
        secondOutlet.text = String(format: "%02i", seconds)
        
        //seconds reset when minutes isnt zero or else if seonds and minutes is zero an alert pops up
        if seconds == -1 && minutes != 0 {
            seconds = 60
            seconds -= 1
            secondOutlet.text = String(format: "%02i", seconds)
        } else if seconds == 00 && minutes == 0{
            timer.invalidate()
            timer2.invalidate()
            timer3.invalidate()
            timeIsOut()
            for buttons in allButtons {
                buttons.isHidden = true
            }
            questionLabel.text = ""
            colon.isHidden = true
            time.isHidden = true
            minutesOutlet.isHidden = true
            secondOutlet.isHidden = true
            scoreOutlet.isHidden = true
            playerScore.isHidden = true
        }
    }
    
    //minutes goes down by one after a delay of one second
    @objc func timerFunction2() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            self.minutes -= 1
            self.minutesOutlet.text = String(self.minutes)
        }
        
    }
    
    //minutes goes down by one
    @objc func timerFunction3() {
        minutes -= 1
        minutesOutlet.text = String(minutes)
    }
    
    //function that shuffles the answers so they are placed randomly
    func setAnswers(array: [String]) {
        shuffledarray = array.shuffled()
        button1.setTitle(shuffledarray[0], for: .normal)
        button2.setTitle(shuffledarray[1], for: .normal)
        button3.setTitle(shuffledarray[2], for: .normal)
        button4.setTitle(shuffledarray[3], for: .normal)
    }
    
    //finds where a number is in an array and removes it
    func removeNumber(array: [Int], numberToRemove: Int) -> Int {
        var theIndex: Int = 0
        
        for (index,num) in array.enumerated() {
            if num == numberToRemove {
                theIndex = index
            }
        }
        
        return theIndex
    }
    
    //when time is out, you can save your data or not
    func timeIsOut() {
        let alert = UIAlertController(title: "Out Of Time", message: "Your score was \(score). Would you like to save your progress?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "NO", style: .default, handler: { action in
            self.colon.isHidden = true
            self.time.isHidden = true
            self.minutesOutlet.isHidden = true
            self.secondOutlet.isHidden = true
            self.scoreOutlet.isHidden = true
            self.playerScore.isHidden = true
        } ))
            
        
        alert.addAction(UIAlertAction(title: "YES", style: .default, handler: { action in
            self.saveData()
            
        }))
        
        present(alert, animated: true)
        buttonToGoHome.isHidden = false
        
    }
    
    //this function saves the data
    func saveData() {
        let alert = UIAlertController(title: "Enter your name", message: nil, preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Input your name here..."
        })
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
            switch self.score {
            case 0...9:
                self.superScore = "00\(self.score)"
            case 10...99:
                self.superScore = "0\(self.score)"
            default:
                self.superScore = String(self.score)
            }
            
            self.savedData2.append("Score: \(self.superScore),     Player's Name: \((alert.textFields?.first!.text)!)")
            self.savedScores2.set(self.savedData2, forKey: "save2")
            
        }))
        
        self.present(alert, animated: true)
        
    }
    
    //what happens when an answer is chosen
    @IBAction func actionForAll(_ sender: UIButton) {
        
        //if its right your score increases by one and the background of the button goes up by 1 or if its incorrect the background is red and the right one is green
        if correctAnswers.contains(sender.title(for: .normal)!){
            sender.backgroundColor = UIColor.green
            score += 1
            playerScore.text = String(score)
        } else {
            sender.backgroundColor = UIColor.red
            for buttons in allButtons{
                if correctAnswers.contains(buttons.currentTitle!){
                    buttons.backgroundColor = UIColor.green
                }
            }
        }
        
        //all buttons are disable
        for buttons in allButtons{
            buttons.isUserInteractionEnabled = false
        }
        

        //depending on what array is empty, a nummber is removed from the numbers
        if shuffledMathArray.isEmpty == true {
            var value = removeNumber(array: numbers, numberToRemove: 0)
            numbers.remove(at: value)
        }
        if shuffledScienceArray.isEmpty == true {
            var value1 = removeNumber(array: numbers, numberToRemove: 1)
            numbers.remove(at: value1)
        }
        if shuffledHistoryArray.isEmpty == true {
            var value2 = removeNumber(array: numbers, numberToRemove: 2)
            numbers.remove(at: value2)
        }
        if shuffledGeographyArray.isEmpty == true {
            var value3 = removeNumber(array: numbers, numberToRemove: 3)
            numbers.remove(at: value3)
        }
        if shuffledGOTArray.isEmpty == true {
            var value4 = removeNumber(array: numbers, numberToRemove: 4)
            numbers.remove(at: value4)
        }
        if shuffledSportsArray.isEmpty == true {
            var value5 = removeNumber(array: numbers, numberToRemove: 5)
            numbers.remove(at: value5)
        }
        
        //shuffles the numebrs and takes the first index
        shuffledNumbers = numbers.shuffled()
        var randomNum = shuffledNumbers[0]
        
        //creates a one second delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
        //depending on the random number, a question is displayeed
        if randomNum == 0 {
            self.questionLabel.text = shuffledMathArray[0]
            shuffledMathArray.remove(at: 0)
            if self.questionLabel.text == mathArray[0]{
                                self.setAnswers(array: answersMath1)
                            } else if self.questionLabel.text == mathArray[1]{
                                self.setAnswers(array: answersMath2)
                            } else if self.questionLabel.text == mathArray[2]{
                                self.setAnswers(array: answersMath3)
                            } else if self.questionLabel.text == mathArray[3]{
                                self.setAnswers(array: answersMath4)
                            } else if self.questionLabel.text == mathArray[4]{
                                self.setAnswers(array: answersMath5)
                            } else if self.questionLabel.text == mathArray[5]{
                                self.setAnswers(array: answersMath6)
                            } else if self.questionLabel.text == mathArray[6]{
                                self.setAnswers(array: answersMath7)
                            } else if self.questionLabel.text == mathArray[7]{
                                self.setAnswers(array: answersMath8)
                            } else if self.questionLabel.text == mathArray[8]{
                                self.setAnswers(array: answersMath9)
                            } else if self.questionLabel.text == mathArray[9]{
                                self.setAnswers(array: answersMath10)
                            } else if self.questionLabel.text == mathArray[10]{
                                self.setAnswers(array: answersMath11)
                            } else if self.questionLabel.text == mathArray[11]{
                                self.setAnswers(array: answersMath12)
                            } else if self.questionLabel.text == mathArray[12]{
                                self.setAnswers(array: answersMath13)
                            } else if self.questionLabel.text == mathArray[13]{
                                self.setAnswers(array: answersMath14)
                            } else if self.questionLabel.text == mathArray[14]{
                                self.setAnswers(array: answersMath15)
                            } else if self.questionLabel.text == mathArray[15]{
                                self.setAnswers(array: answersMath16)
                            } else if self.questionLabel.text == mathArray[16]{
                                self.setAnswers(array: answersMath17)
                            } else if self.questionLabel.text == mathArray[17]{
                                self.setAnswers(array: answersMath18)
                            } else if self.questionLabel.text == mathArray[18]{
                                self.setAnswers(array: answersMath19)
                            } else if self.questionLabel.text == mathArray[19]{
                                self.setAnswers(array: answersMath20)
                            } else if self.questionLabel.text == mathArray[20]{
                                self.setAnswers(array: answersMath21)
                            } else if self.questionLabel.text == mathArray[21]{
                                self.setAnswers(array: answersMath22)
                            } else if self.questionLabel.text == mathArray[22]{
                                self.setAnswers(array: answersMath23)
                            } else if self.questionLabel.text == mathArray[23]{
                                self.setAnswers(array: answersMath24)
                            } else if self.questionLabel.text == mathArray[24]{
                                self.setAnswers(array: answersMath25)
                            }
        } else if randomNum == 1 {
            self.questionLabel.text = shuffledScienceArray[0]
            shuffledScienceArray.remove(at: 0)
            if self.questionLabel.text == scienceArray[0]{
                                self.setAnswers(array: answersScience1)
                            } else if self.questionLabel.text == scienceArray[1]{
                                self.setAnswers(array: answersScience2)
                            } else if self.questionLabel.text == scienceArray[2]{
                                self.setAnswers(array: answersScience3)
                            } else if self.questionLabel.text == scienceArray[3]{
                                self.setAnswers(array: answersScience4)
                            } else if self.questionLabel.text == scienceArray[4]{
                                self.setAnswers(array: answersScience5)
                            } else if self.questionLabel.text == scienceArray[5]{
                                self.setAnswers(array: answersScience6)
                            } else if self.questionLabel.text == scienceArray[6]{
                                self.setAnswers(array: answersScience7)
                            } else if self.questionLabel.text == scienceArray[7]{
                                self.setAnswers(array: answersScience8)
                            } else if self.questionLabel.text == scienceArray[8]{
                                self.setAnswers(array: answersScience9)
                            } else if self.questionLabel.text == scienceArray[9]{
                                self.setAnswers(array: answersScience10)
                            } else if self.questionLabel.text == scienceArray[10]{
                                self.setAnswers(array: answersScience11)
                            } else if self.questionLabel.text == scienceArray[11]{
                                self.setAnswers(array: answersScience12)
                            } else if self.questionLabel.text == scienceArray[12]{
                                self.setAnswers(array: answersScience13)
                            } else if self.questionLabel.text == scienceArray[13]{
                                self.setAnswers(array: answersScience14)
                            } else if self.questionLabel.text == scienceArray[14]{
                                self.setAnswers(array: answersScience15)
                            } else if self.questionLabel.text == scienceArray[15]{
                                self.setAnswers(array: answersScience16)
                            } else if self.questionLabel.text == scienceArray[16]{
                                self.setAnswers(array: answersScience17)
                            } else if self.questionLabel.text == scienceArray[17]{
                                self.setAnswers(array: answersScience18)
                            } else if self.questionLabel.text == scienceArray[18]{
                                self.setAnswers(array: answersScience19)
                            } else if self.questionLabel.text == scienceArray[19]{
                                self.setAnswers(array: answersScience20)
                            } else if self.questionLabel.text == scienceArray[20]{
                                self.setAnswers(array: answersScience21)
                            } else if self.questionLabel.text == scienceArray[21]{
                                self.setAnswers(array: answersScience22)
                            } else if self.questionLabel.text == scienceArray[22]{
                                self.setAnswers(array: answersScience23)
                            } else if self.questionLabel.text == scienceArray[23]{
                                self.setAnswers(array: answersScience24)
                            } else if self.questionLabel.text == scienceArray[24]{
                                self.setAnswers(array: answersScience25)
                            }
        } else if randomNum == 2{
            self.questionLabel.text = shuffledHistoryArray[0]
            shuffledHistoryArray.remove(at: 0)
        if self.questionLabel.text == HistoryArray[0]{
            self.setAnswers(array: historyAnswers1)
        } else if self.questionLabel.text == HistoryArray[1]{
            self.setAnswers(array: historyAnswers2)
        } else if self.questionLabel.text == HistoryArray[2]{
            self.setAnswers(array: historyAnswers3)
        } else if self.questionLabel.text == HistoryArray[3]{
            self.setAnswers(array: historyAnswers4)
        } else if self.questionLabel.text == HistoryArray[4]{
            self.setAnswers(array: historyAnswers5)
        } else if self.questionLabel.text == HistoryArray[5]{
            self.setAnswers(array: historyAnswers6)
        } else if self.questionLabel.text == HistoryArray[6]{
            self.setAnswers(array: historyAnswers7)
        } else if self.questionLabel.text == HistoryArray[7]{
            self.setAnswers(array: historyAnswers8)
        } else if self.questionLabel.text == HistoryArray[8]{
            self.setAnswers(array: historyAnswers9)
        } else if self.questionLabel.text == HistoryArray[9]{
            self.setAnswers(array: historyAnswers10)
        } else if self.questionLabel.text == HistoryArray[10]{
            self.setAnswers(array: historyAnswers11)
        } else if self.questionLabel.text == HistoryArray[11]{
            self.setAnswers(array: historyAnswers12)
        } else if self.questionLabel.text == HistoryArray[12]{
            self.setAnswers(array: historyAnswers13)
        } else if self.questionLabel.text == HistoryArray[13]{
            self.setAnswers(array: historyAnswers14)
        } else if self.questionLabel.text == HistoryArray[14]{
            self.setAnswers(array: historyAnswers15)
        } else if self.questionLabel.text == HistoryArray[15]{
            self.setAnswers(array: historyAnswers16)
        } else if self.questionLabel.text == HistoryArray[16]{
            self.setAnswers(array: historyAnswers17)
        } else if self.questionLabel.text == HistoryArray[17]{
            self.setAnswers(array: historyAnswers18)
        } else if self.questionLabel.text == HistoryArray[18]{
            self.setAnswers(array: historyAnswers19)
        } else if self.questionLabel.text == HistoryArray[19]{
            self.setAnswers(array: historyAnswers20)
        } else if self.questionLabel.text == HistoryArray[20]{
            self.setAnswers(array: historyAnswers21)
        } else if self.questionLabel.text == HistoryArray[21]{
            self.setAnswers(array: historyAnswers22)
        } else if self.questionLabel.text == HistoryArray[22]{
            self.setAnswers(array: historyAnswers23)
        } else if self.questionLabel.text == HistoryArray[23]{
            self.setAnswers(array: historyAnswers24)
        } else if self.questionLabel.text == HistoryArray[24]{
            self.setAnswers(array: historyAnswers25)
            }

            
        } else if randomNum == 3{
            self.questionLabel.text = shuffledGeographyArray[0]
            shuffledGeographyArray.remove(at: 0)
            if self.questionLabel.text == geographyArray[0]{
                self.setAnswers(array: geoAnswer1)
            } else if self.questionLabel.text == geographyArray[1]{
            self.setAnswers(array: geoAnswer2)
        } else if self.questionLabel.text == geographyArray[2]{
            self.setAnswers(array: geoAnswer3)
        } else if self.questionLabel.text == geographyArray[3]{
            self.setAnswers(array: geoAnswer4)
        } else if self.questionLabel.text == geographyArray[4]{
            self.setAnswers(array: geoAnswer5)
        } else if self.questionLabel.text == geographyArray[5]{
            self.setAnswers(array: geoAnswer6)
        } else if self.questionLabel.text == geographyArray[6]{
            self.setAnswers(array: geoAnswer7)
        } else if self.questionLabel.text == geographyArray[7]{
            self.setAnswers(array: geoAnswer8)
        } else if self.questionLabel.text == geographyArray[8]{
            self.setAnswers(array: geoAnswer9)
        } else if self.questionLabel.text == geographyArray[9]{
            self.setAnswers(array: geoAnswer10)
        } else if self.questionLabel.text == geographyArray[10]{
            self.setAnswers(array: geoAnswer11)
        } else if self.questionLabel.text == geographyArray[11]{
            self.setAnswers(array: geoAnswer12)
        } else if self.questionLabel.text == geographyArray[12]{
            self.setAnswers(array: geoAnswer13)
        } else if self.questionLabel.text == geographyArray[13]{
            self.setAnswers(array: geoAnswer14)
        } else if self.questionLabel.text == geographyArray[14]{
            self.setAnswers(array: geoAnswer15)
        } else if self.questionLabel.text == geographyArray[15]{
            self.setAnswers(array: geoAnswer16)
        } else if self.questionLabel.text == geographyArray[16]{
            self.setAnswers(array: geoAnswer17)
        } else if self.questionLabel.text == geographyArray[17]{
            self.setAnswers(array: geoAnswer18)
        } else if self.questionLabel.text == geographyArray[18]{
            self.setAnswers(array: geoAnswer19)
        } else if self.questionLabel.text == geographyArray[19]{
            self.setAnswers(array: geoAnswer20)
        } else if self.questionLabel.text == geographyArray[20]{
            self.setAnswers(array: geoAnswer21)
        } else if self.questionLabel.text == geographyArray[21]{
            self.setAnswers(array: geoAnswer22)
        } else if self.questionLabel.text == geographyArray[22]{
            self.setAnswers(array: geoAnswer23)
        } else if self.questionLabel.text == geographyArray[23]{
            self.setAnswers(array: geoAnswer24)
        } else if self.questionLabel.text == geographyArray[24]{
            self.setAnswers(array: geoAnswer25)
        }
        } else if randomNum == 4{
            self.questionLabel.text = shuffledGOTArray[0]
            shuffledGOTArray.remove(at: 0)
            if self.questionLabel.text == GOTArray[0]{
                self.setAnswers(array: GOTanswers1)
            } else if self.questionLabel.text == GOTArray[1]{
                self.setAnswers(array: GOTanswers2)
            } else if self.questionLabel.text == GOTArray[2]{
                self.setAnswers(array: GOTanswers3)
            } else if self.questionLabel.text == GOTArray[3]{
                self.setAnswers(array: GOTanswers4)
            } else if self.questionLabel.text == GOTArray[4]{
                self.setAnswers(array: GOTanswers5)
            } else if self.questionLabel.text == GOTArray[5]{
                self.setAnswers(array: GOTanswers6)
            } else if self.questionLabel.text == GOTArray[6]{
                self.setAnswers(array: GOTanswers7)
            } else if self.questionLabel.text == GOTArray[7]{
                self.setAnswers(array: GOTanswers8)
            } else if self.questionLabel.text == GOTArray[8]{
                self.setAnswers(array: GOTanswers9)
            } else if self.questionLabel.text == GOTArray[9]{
                self.setAnswers(array: GOTanswers10)
            } else if self.questionLabel.text == GOTArray[10]{
                self.setAnswers(array: GOTanswers11)
            } else if self.questionLabel.text == GOTArray[11]{
                self.setAnswers(array: GOTanswers12)
            } else if self.questionLabel.text == GOTArray[12]{
                self.setAnswers(array: GOTanswers13)
            } else if self.questionLabel.text == GOTArray[13]{
                self.setAnswers(array: GOTanswers14)
            } else if self.questionLabel.text == GOTArray[14]{
                self.setAnswers(array: GOTanswers15)
            } else if self.questionLabel.text == GOTArray[15]{
                self.setAnswers(array: GOTanswers16)
            } else if self.questionLabel.text == GOTArray[16]{
                self.setAnswers(array: GOTanswers17)
            } else if self.questionLabel.text == GOTArray[17]{
                self.setAnswers(array: GOTanswers18)
            } else if self.questionLabel.text == GOTArray[18]{
                self.setAnswers(array: GOTanswers19)
            } else if self.questionLabel.text == GOTArray[19]{
                self.setAnswers(array: GOTanswers20)
            } else if self.questionLabel.text == GOTArray[20]{
                self.setAnswers(array: GOTanswers21)
            } else if self.questionLabel.text == GOTArray[21]{
                self.setAnswers(array: GOTanswers22)
            } else if self.questionLabel.text == GOTArray[22]{
                self.setAnswers(array: GOTanswers23)
            } else if self.questionLabel.text == GOTArray[23]{
                self.setAnswers(array: GOTanswers24)
            } else if self.questionLabel.text == GOTArray[24]{
                self.setAnswers(array: GOTanswers25)
            }
        } else if randomNum == 5 {
            self.questionLabel.text = shuffledSportsArray[0]
            shuffledSportsArray.remove(at: 0)
            if self.questionLabel.text == sportsArray[0]{
                self.setAnswers(array: sportsAnswer1)
            } else if self.questionLabel.text == sportsArray[1]{
                self.setAnswers(array: sportsAnswer2)
            } else if self.questionLabel.text == sportsArray[2]{
                self.setAnswers(array: sportsAnswer3)
            } else if self.questionLabel.text == sportsArray[3]{
                self.setAnswers(array: sportsAnswer4)
            } else if self.questionLabel.text == sportsArray[4]{
                self.setAnswers(array: sportsAnswer5)
            } else if self.questionLabel.text == sportsArray[5]{
                self.setAnswers(array: sportsAnswer6)
            } else if self.questionLabel.text == sportsArray[6]{
                self.setAnswers(array: sportsAnswer7)
            } else if self.questionLabel.text == sportsArray[7]{
                self.setAnswers(array: sportsAnswer8)
            } else if self.questionLabel.text == sportsArray[8]{
                self.setAnswers(array: sportsAnswer9)
            } else if self.questionLabel.text == sportsArray[9]{
                self.setAnswers(array: sportsAnswer10)
            } else if self.questionLabel.text == sportsArray[10]{
                self.setAnswers(array: sportsAnswer11)
            } else if self.questionLabel.text == sportsArray[11]{
                self.setAnswers(array: sportsAnswer12)
            } else if self.questionLabel.text == sportsArray[12]{
                self.setAnswers(array: sportsAnswer13)
            } else if self.questionLabel.text == sportsArray[13]{
                self.setAnswers(array: sportsAnswer14)
            } else if self.questionLabel.text == sportsArray[14]{
                self.setAnswers(array: sportsAnswer15)
            } else if self.questionLabel.text == sportsArray[15]{
                self.setAnswers(array: sportsAnswer16)
            } else if self.questionLabel.text == sportsArray[16]{
                self.setAnswers(array: sportsAnswer17)
            } else if self.questionLabel.text == sportsArray[17]{
                self.setAnswers(array: sportsAnswer18)
            } else if self.questionLabel.text == sportsArray[18]{
                self.setAnswers(array: sportsAnswer19)
            } else if self.questionLabel.text == sportsArray[19]{
                self.setAnswers(array: sportsAnswer20)
            } else if self.questionLabel.text == sportsArray[20]{
                self.setAnswers(array: sportsAnswer21)
            } else if self.questionLabel.text == sportsArray[21]{
                self.setAnswers(array: sportsAnswer22)
            } else if self.questionLabel.text == sportsArray[22]{
                self.setAnswers(array: sportsAnswer23)
            } else if self.questionLabel.text == sportsArray[23]{
                self.setAnswers(array: sportsAnswer24)
            } else if self.questionLabel.text == sportsArray[24]{
                self.setAnswers(array: sportsAnswer25)
            }
        }
        
        
            //enables all the buttons and the background color is white
            for buttons in self.allButtons {
                buttons.backgroundColor = UIColor.white
                buttons.isUserInteractionEnabled = true
            }
        }
        
        //remove from the shuffled array
        shuffledarray.removeAll()
        
        
    }
    
    
}
