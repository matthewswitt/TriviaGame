

import UIKit

class ViewControllerStory: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var list : [String] = ["Store", "Level 1", "Level 2", "Level 3", "Level 4", "Level 5", "Level 6", "Level 7", "Level 8", "Level 9", "Level 10", "Level 11", "Level 12", "Level 13", "Level 14", "Level 15", "Level 16", "Level 17", "Level 18", "Level 19", "Level 20",]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(list.count)
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        var cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        if list[indexPath.row] == "Level 1"  {
            cell.isUserInteractionEnabled = true
        } else {
            cell.isUserInteractionEnabled = false
        }
        return(cell)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var textToBeSent: String = ""
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(list[indexPath.row])
        textToBeSent = list[indexPath.row]
        self.performSegue(withIdentifier: "infoView", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let info = segue.destination as! ViewController2
        info.myString = textToBeSent
        
    }
    
    @IBAction func unwindToLevels (_ unwindSegue: UIStoryboardSegue) {
    }
    
    
    
    
    
    
}
