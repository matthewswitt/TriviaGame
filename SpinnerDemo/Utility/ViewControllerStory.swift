//
//  ViewController.swift
//  tableView
//
//  Created by Eric Falzone on 2019-06-10.
//  Copyright © 2019 Eric Falzone. All rights reserved.
//

import UIKit

class ViewControllerStory: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //creates an array with strings for the cells
    var list : [String] = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5", "Level 6", "Level 7", "Level 8", "Level 9", "Level 10", "Level 11", "Level 12", "Level 13", "Level 14", "Level 15", "Level 16", "Level 17", "Level 18", "Level 19", "Level 20",]
    
    //private let table: UITableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(list.count)
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        var cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
            //the first cell is enabled but every other cell is disabled
            if indexPath.row == 0  {
                cell.isUserInteractionEnabled = true
                
            } else {
                cell.isUserInteractionEnabled = false
            }
        
        
        return(cell)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //disables back button
        self.navigationItem.setHidesBackButton(true, animated: true)
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //performs a segue and removes the cell you just clicked
        performSegue(withIdentifier: "infoView", sender: nil)
        list.remove(at: indexPath.row)
        tableView.reloadData()
        
        
    }
    
    //depending on what variable is true, the title for the next view is something
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if levelOne == true {
            segue.destination.navigationItem.title = "Level 1"
        }
        if levelTwo == true {
            segue.destination.navigationItem.title = "Level 2"
        }
        if levelThree == true {
            segue.destination.navigationItem.title = "Level 3"
        }
        if levelFour == true {
            segue.destination.navigationItem.title = "Level 4"
        }
        if levelFive == true {
            segue.destination.navigationItem.title = "Level 5"
        }
        if levelSix == true {
            segue.destination.navigationItem.title = "Level 6"
        }
        if levelSeven == true {
            segue.destination.navigationItem.title = "Level 7"
        }
        if levelEight == true {
            segue.destination.navigationItem.title = "Level 8"
        }
        if levelNine == true {
            segue.destination.navigationItem.title = "Level 9"
        }
        if levelTen == true {
            segue.destination.navigationItem.title = "Level 10"
        }
        if levelEleven == true {
            segue.destination.navigationItem.title = "Level 11"
        }
        if levelTwelve == true {
            segue.destination.navigationItem.title = "Level 12"
        }
        if levelThirteen == true {
            segue.destination.navigationItem.title = "Level 13"
        }
        if levelFourteen == true {
            segue.destination.navigationItem.title = "Level 14"
        }
        if levelFifteen == true {
            segue.destination.navigationItem.title = "Level 15"
        }
        if levelSixteen == true {
            segue.destination.navigationItem.title = "Level 16"
        }
        if levelSeventeen == true {
            segue.destination.navigationItem.title = "Level 17"
        }
        if levelEighteen == true {
            segue.destination.navigationItem.title = "Level 18"
        }
        if levelNineteen == true {
            segue.destination.navigationItem.title = "Level 19"
        }
        if levelTwenty == true {
            segue.destination.navigationItem.title = "Level 20"
        }
        
    }
   
    //when this unwind segue is called, all question arrays are reset, correct answers is reset to 0 and lives is reset
    @IBAction func unwindToLevels(_ unwindSegue: UIStoryboardSegue){
        shuffledMathArray = mathArray.shuffled()
        shuffledScienceArray = scienceArray.shuffled()
        shuffledHistoryArray = HistoryArray.shuffled()
        shuffledGOTArray = GOTArray.shuffled()
        shuffledSportsArray = sportsArray.shuffled()
        shuffledGeographyArray = geographyArray.shuffled()
        correctForStory = 0
        livesLeft = 3
    }
    
    
    
    
    
    
}





