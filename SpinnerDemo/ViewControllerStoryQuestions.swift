
import UIKit

class ViewControllerStoryQuestions: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //buttons are hidden
        continueOutlet.isHidden = true
        returnToLevels.isHidden = true
        goHomeOutlet.isHidden = true
        
        loadData()
        
        //depending on the random number, a certain subject's question is called
        if randomNumber == 0 {
            questionLabel.text = shuffledMathArray[0]
            shuffledMathArray.remove(at: 0)
        } else if randomNumber == 1 {
            questionLabel.text = shuffledScienceArray[0]
            shuffledScienceArray.remove(at: 0)
        } else if randomNumber == 2{
            questionLabel.text = shuffledHistoryArray[0]
            shuffledHistoryArray.remove(at: 0)
        } else if randomNumber == 3{
            questionLabel.text = shuffledGeographyArray[0]
            shuffledGeographyArray.remove(at: 0)
        } else if randomNumber == 4{
            questionLabel.text = shuffledGOTArray[0]
            shuffledGOTArray.remove(at: 0)
        } else if randomNumber == 7{
            questionLabel.text = shuffledSportsArray[0]
            shuffledSportsArray.remove(at: 0)
        } else if randomNumber == 5{
            if rand2 == 0 {
                questionLabel.text = shuffledMathArray[0]
                shuffledMathArray.remove(at: 0)
            } else if rand2 == 1 {
                questionLabel.text = shuffledScienceArray[0]
                shuffledScienceArray.remove(at: 0)
            } else if rand2 == 2 {
                questionLabel.text = shuffledHistoryArray[0]
                shuffledHistoryArray.remove(at: 0)
            } else if rand2 == 3 {
                questionLabel.text = shuffledGeographyArray[0]
                shuffledGeographyArray.remove(at: 0)
            } else if rand2 == 4 {
                questionLabel.text = shuffledGOTArray[0]
                shuffledGOTArray.remove(at: 0)
            } else if rand2 == 7 {
                questionLabel.text = shuffledSportsArray[0]
                shuffledSportsArray.remove(at: 0)
            }
        }
        
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        //depending on what question is called, certain answers are display
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
        
        //shows the amount of lives left
        livesRemaining.text = String(livesLeft)
        
        //shows the number of correct answers
        numberCorrect.text = String(correctForStory)
    }
    
    //creates outlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet var allButtons: [UIButton]!
    @IBOutlet weak var timeRemaining: UILabel!
    @IBOutlet weak var continueOutlet: UIButton!
    @IBOutlet weak var returnToLevels: UIButton!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var livesRemaining: UILabel!
    @IBOutlet weak var lives: UILabel!
    @IBOutlet weak var goHomeOutlet: UIButton!
    @IBOutlet weak var correct: UILabel!
    @IBOutlet weak var numberCorrect: UILabel!
    
    //creates variables
    var timer = Timer()
    var myTime = 20
    var savedData: [String] = []
    var savedScores = UserDefaults.standard
    var superScore = ""
    var currentLevel2 = Int()
    //allows the leaderboard to be accessed
    let leaderboard = ViewControllerLeaderboard()
    
    //reloads the saved array
    func loadData() {
        if let loadNames: [String] = UserDefaults.standard.value(forKey: "save") as? [String] {
            savedData = loadNames
        }
    }
    
    //when all lives are lost this is called, it hides everything on the view and an alert is displayed and a certain button is shown depending on the user's choice
    func allLivesLost() {
        let alertController = UIAlertController(title: "Game Over", message:
            "You finished on Level \(currentLevel)! Would you like to save your level?", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "NO", style: .default, handler: { action in
            for buttons in self.allButtons{
                buttons.isHidden = true
            }
            self.lives.isHidden = true
            self.livesRemaining.isHidden = true
            self.questionLabel.isHidden = true
            self.time.isHidden = true
            self.timeRemaining.isHidden = true
            self.continueOutlet.isHidden = true
            self.returnToLevels.isHidden = true
            self.correct.isHidden = true
            self.numberCorrect.isHidden = true
            
            
        }))
        alertController.addAction(UIAlertAction(title: "YES", style: .default, handler: { action in
            for buttons in self.allButtons{
                buttons.isHidden = true
            }
            self.lives.isHidden = true
            self.livesRemaining.isHidden = true
            self.questionLabel.isHidden = true
            self.time.isHidden = true
            self.timeRemaining.isHidden = true
            self.continueOutlet.isHidden = true
            self.returnToLevels.isHidden = true
            self.correct.isHidden = true
            self.numberCorrect.isHidden = true
            self.saveData()
            
        }))
        
        goHomeOutlet.isHidden = false
        present(alertController, animated: true)
    }
    
    //if they choose to save their data, you enter your name and your name and level is saved
    func saveData() {
        let alert = UIAlertController(title: "Enter your name", message: nil, preferredStyle: .alert)
        currentLevel2 = currentLevel
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Input your name here..."
        })
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
            switch self.currentLevel2 {
            case 0...9:
                self.superScore = "0\(self.currentLevel2)"
            default:
                self.superScore = String(self.currentLevel2)
            }
            
            self.savedData.append("Made it to Level: \(self.superScore),  Player's Name: \((alert.textFields?.first!.text)!)")
            self.savedScores.set(self.savedData, forKey: "save")
            
        }))
        
        self.present(alert, animated: true)
        
    }
    
    //when the view is opened, the timer starts
    @objc func timerFunction() {
        //decreases by one every second
        myTime -= 1
        timeRemaining.text = String(myTime)
        
        //if theres zero seconds left, all lives left function is called or an alert is called if not all lives are lost and it shows you the right answer, disables the buttons
        if myTime == 0 {
            timer.invalidate()
            livesLeft -= 1
            livesRemaining.text = String(livesLeft)
            if livesLeft == 0 {
                allLivesLost()
            }
            let alert = UIAlertController(title: "Out Of Time", message: "You didn't answer the question quickly enough.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true)
            for buttons in allButtons{
                buttons.isUserInteractionEnabled = false
                if correctAnswers.contains(buttons.currentTitle!){
                    buttons.backgroundColor = UIColor.green
                }
            }
            continueOutlet.isHidden = false
        }
        
    }
    
    
    //function that shuffles an answer array and displays it
    func setAnswers(array: [String]) {
        shuffledarray = array.shuffled()
        button1.setTitle(shuffledarray[0], for: .normal)
        button2.setTitle(shuffledarray[1], for: .normal)
        button3.setTitle(shuffledarray[2], for: .normal)
        button4.setTitle(shuffledarray[3], for: .normal)
    }
    
    //clears the view by hiding everything
    func removeAll() {
        continueOutlet.isHidden =  true
        returnToLevels.isHidden = false
        livesRemaining.isHidden = true
        lives.isHidden = true
        numberCorrect.isHidden = true
        correct.isHidden = true
        for buttons in allButtons{
            buttons.isHidden = true
        }
        questionLabel.isHidden = true
        time.isHidden = true
        timeRemaining.isHidden = true
    }
    
    //when a button is pressed
    @IBAction func buttonsPressed(_ sender: UIButton) {
        //if the correct answer is chosen, the background is set to green and correct answers is incremented by one, else the answer chosen is red and the right one is green and lives left is decreased by one
        if correctAnswers.contains(sender.title(for: .normal)!){
            sender.backgroundColor = UIColor.green
            correctForStory += 1
            numberCorrect.text = String(correctForStory)
            continueOutlet.isHidden = false
        } else {
            livesLeft -= 1
            livesRemaining.text = String(livesLeft)
            sender.backgroundColor = UIColor.red
            for buttons in allButtons{
                if correctAnswers.contains(buttons.currentTitle!){
                    buttons.backgroundColor = UIColor.green
                }
                continueOutlet.isHidden = false
            }
        }
        
        
        //all buttons are disabled
        for buttons in allButtons{
            buttons.isUserInteractionEnabled = false
        }
        
        //timer stops
        timer.invalidate()
        
        //if lives left is zero, the function all lives left is called
        if livesLeft == 0 {
            allLivesLost()
        }
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            //if the level number is equal to the number of correct answers, enables the next level and an alert pops up and the function removes everything from the view
            if correctForStory == 1 && self.navigationItem.title == "Level 1" {
                levelOne = false
                levelTwo = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level One!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 2 && self.navigationItem.title == "Level 2" {
                levelTwo = false
                levelThree = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Two!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 3 && self.navigationItem.title == "Level 3" {
                levelThree = false
                levelFour = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Three!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 4 && self.navigationItem.title == "Level 4" {
                levelFour = false
                levelFive = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Four!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 5 && self.navigationItem.title == "Level 5" {
                levelFive = false
                levelSix = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Five!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 6 && self.navigationItem.title == "Level 6" {
                levelSix = false
                levelSeven = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Six!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 7 && self.navigationItem.title == "Level 7" {
                levelSeven = false
                levelEight = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Seven!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 8 && self.navigationItem.title == "Level 8" {
                levelEight = false
                levelNine = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Eight!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 9 && self.navigationItem.title == "Level 9" {
                levelNine = false
                levelTen = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Nine!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 10 && self.navigationItem.title == "Level 10" {
                levelTen = false
                levelEleven = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Ten!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 11 && self.navigationItem.title == "Level 11" {
                levelEleven = false
                levelTwelve = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Eleven!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 12 && self.navigationItem.title == "Level 12" {
                levelTwelve = false
                levelThirteen = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Twelve!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 13 && self.navigationItem.title == "Level 13" {
                levelThirteen = false
                levelFourteen = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Thirteen!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
                
            } else if correctForStory == 14 && self.navigationItem.title == "Level 14" {
                levelFourteen = false
                levelFifteen = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Fourteen!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 15 && self.navigationItem.title == "Level 15" {
                levelFifteen = false
                levelSixteen = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Fifteen!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 16 && self.navigationItem.title == "Level 16" {
                levelSixteen = false
                levelSeventeen = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Sixteen!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 17 && self.navigationItem.title == "Level 17" {
                levelSeventeen = false
                levelEighteen = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Seventeen!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 18 && self.navigationItem.title == "Level 18" {
                levelEighteen = false
                levelNineteen = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Eighteen!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 19 && self.navigationItem.title == "Level 19" {
                levelNineteen = false
                levelTwenty = true
                currentLevel += 1
                livesLeft = 3
                let alert = UIAlertController(title: "Congratulations", message: "You beat Level Nineteen!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            } else if correctForStory == 20 && self.navigationItem.title == "Level 20" {
                levelTwenty = false
                currentLevel += 1
                livesLeft = 3
                self.allLivesLost()
                let alert = UIAlertController(title: "Congratulations", message: "You beat all the levels!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                self.removeAll()
            }
        }

        
        
        
        
    }
    
    //when a button is pressed to unwind a segue, shuffled array is empty
    @IBAction func continueAction(_ sender: UIButton) {
        shuffledarray.removeAll()
    }
    
    @IBAction func goToMainScreen(_ sender: UIButton) {
        shuffledarray.removeAll()
    }
    
    @IBAction func goToLevels(_ sender: UIButton) {
        shuffledarray.removeAll()
    }
    
    
}
