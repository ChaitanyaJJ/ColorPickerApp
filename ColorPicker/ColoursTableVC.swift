//
//  ColorsTableVC.swift
//  ColorPicker
//
//  Created by Chaitanya J on 01/02/2025.
//

import UIKit

class ColorsTableVC: UIViewController {
    var colours: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColours()

        // Do any additional setup after loading the view.
    }
    
    func addRandomColours(){
        for _ in 0..<50{
            colours.append(createRandomColour())
        }
    }
    
    func createRandomColour() -> UIColor{
        let randomColour = UIColor(red: CGFloat.random(in: 0...1),
                                   green: CGFloat.random(in: 0...1),
                                   blue: CGFloat.random(in: 0...1),
                                   alpha: 1)
        return randomColour
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailsVC
        destVC.colour = sender as? UIColor
    }
    

}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colours.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColourCell") else {
            return UITableViewCell()
        }

        cell.backgroundColor = colours[indexPath.row]
        return cell
       
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let colour = colours[indexPath.row]
        performSegue(withIdentifier: "ToColoursDetailsVC", sender: colour)
    }
}
    
