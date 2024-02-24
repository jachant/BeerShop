//
//  ViewController.swift
//  Bear_shop
//
//  Created by Артем Антонов on 24.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Beer1Label: UILabel!
    @IBOutlet weak var Beer2Label: UILabel!
    @IBOutlet weak var Beer3Label: UILabel!
    
    
    @IBOutlet weak var CountBeer1Label: UILabel!
    
    @IBOutlet weak var CountBeer2Label: UILabel!
    
    @IBOutlet weak var CountBeer3Label: UILabel!
    
    
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    
    
    @IBOutlet weak var PlusBeer1Button: UIButton!
    
    @IBOutlet weak var DifBeer1Button: UIButton!
    
    
    @IBOutlet weak var PlusBeer2Button: UIButton!
    
    @IBOutlet weak var DifBeer2Button: UIButton!
    
    
    @IBOutlet weak var PlusBeer3Button: UIButton!
    
    @IBOutlet weak var DifBeer3Button: UIButton!
    
    
    @IBOutlet weak var SellButton: UIButton!
    
    @IBOutlet weak var StartDayButton: UIButton!
    
    @IBOutlet weak var EndDayButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Manager.shared.CreateBeer(name: "Beer1")
        Manager.shared.CreateBeer(name: "Beer2")
        Manager.shared.CreateBeer(name: "Beer3")
        
        
    }
    
    
    
    @IBAction func PlusBeer1ButtonRise(_ sender: UIButton) {
        if (Manager.shared.check()) {
            Manager.shared.addCountBeer(name: "Beer1")
            CountBeer1Label.text = Manager.shared.getCountBeer(name: "Beer1")}
    }
    
    @IBAction func DifBeer1ButtonDrop(_ sender: UIButton) {
        if (Manager.shared.check()) {
            Manager.shared.difCountBeer(name: "Beer1")
            CountBeer1Label.text = Manager.shared.getCountBeer(name: "Beer1")}
    }
    
    @IBAction func PlusBeer2ButtonRise(_ sender: UIButton) {
        if (Manager.shared.check()) {
            Manager.shared.addCountBeer(name: "Beer2")
            CountBeer2Label.text = Manager.shared.getCountBeer(name: "Beer2")}
    }
    
    @IBAction func DifBeer2ButtonDrop(_ sender: UIButton) {
        if (Manager.shared.check()) {
            Manager.shared.difCountBeer(name: "Beer2")
            CountBeer2Label.text = Manager.shared.getCountBeer(name: "Beer2")}
    }
    
    @IBAction func PlusBeer3ButtonRise(_ sender: UIButton) {
        if (Manager.shared.check()) {
            Manager.shared.addCountBeer(name: "Beer3")
            CountBeer3Label.text = Manager.shared.getCountBeer(name: "Beer3")}
    }
    
    @IBAction func DifBeer3ButtonDrop(_ sender: UIButton) {
        if (Manager.shared.check()) {
            Manager.shared.difCountBeer(name: "Beer3")
            CountBeer3Label.text = Manager.shared.getCountBeer(name: "Beer3")}
    }
    
    
    @IBAction func SellButtonSell(_ sender: UIButton) {
        if (Manager.shared.check()) {
            ResultLabel.text = Manager.shared.sellBeer()
            CountBeer1Label.text = "0"
            CountBeer2Label.text = "0"
            CountBeer3Label.text = "0"}
    }
    
    @IBAction func StartDayButtonStart(_ sender: UIButton) {
        if (!Manager.shared.check()) {
            Manager.shared.startDay()
            CountBeer1Label.text = "0"
            CountBeer2Label.text = "0"
            CountBeer3Label.text = "0"
            ResultLabel.text = "Good Day!"
        }
    }
    
    @IBAction func EndDayButtonEnd(_ sender: UIButton) {
        if (Manager.shared.check()) {
            Manager.shared.endDay()
            ResultLabel.text = "Bye!"
            CountBeer1Label.text = "0"
            CountBeer2Label.text = "0"
            CountBeer3Label.text = "0"
        }
        
    }
    
    
    
    
}

