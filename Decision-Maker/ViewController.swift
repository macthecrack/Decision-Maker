//
//  ViewController.swift
//  Decision-Maker
//
//  Created by Marc Haldenwang on 23.03.20.
//  Copyright © 2020 Generation Future. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

       
    @IBOutlet weak var decisionLabelOutlet: UILabel!
    
    
    @IBOutlet weak var pickerViewOutlet: UIPickerView!
    
    @IBOutlet weak var decisionButtonOutlet: UIButton!
    
    let pickChoices = ["Ja oder Nein", "Links oder Rechts", "Welche Farbe?"]
    
    var choiceJaNein = ["JA!", "NEIN!"]
    
    var choiceLinksRechts = ["LINKS!", "RECHTS!"]
    
    var choiceWelcheFarbe = ["ROT!", "WEISS!", "GRÜN!", "BLAU!", "BRAUN!", "SCHWARZ!", "GELB!", "ORANGE!", "GRAU!", "LILA!", "ROSA!"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.pickerViewOutlet.delegate = self
              
        self.pickerViewOutlet.dataSource = self
        
        
        self.decisionLabelOutlet.alpha = 0
        
        
        
    }

    
   
       
    
    // Funktion des Buttons
    @IBAction func decisionButtonAction(_ sender: UIButton)  {
        
        
        decisionLabelOutlet.textColor = UIColor.black
    
    // Ja oder Nein
        if (pickerViewOutlet.selectedRow(inComponent: 0) == 0)
        {
            
            
            var choiceJaNeinShuffled = choiceJaNein.shuffled()
            
            decisionLabelOutlet.text = choiceJaNeinShuffled[0]
            
            decisionLabelOutlet.alpha = 1
            
            // Links oder Rechts
        } else if (pickerViewOutlet.selectedRow(inComponent: 0) == 1)
        {
            
            
            var choiceLinksRechtsShuffled = choiceLinksRechts.shuffled()
            
            decisionLabelOutlet.text = choiceLinksRechtsShuffled[0]
            
            decisionLabelOutlet.alpha = 1
          
            // Welche Farbe
        } else if (pickerViewOutlet.selectedRow(inComponent: 0) == 2)
        {
            
            var choiceWelcheFarbeShuffled = choiceWelcheFarbe.shuffled()
            
            decisionLabelOutlet.text = choiceWelcheFarbeShuffled[0]
            
            if (decisionLabelOutlet.text == "ROT!")
            {
                
                decisionLabelOutlet.textColor = UIColor.red
                
            } else if (decisionLabelOutlet.text == "WEISS!")
            {
               
                decisionLabelOutlet.textColor = UIColor.white
                
                
            } else if (decisionLabelOutlet.text == "GRÜN!")
            {
                  decisionLabelOutlet.textColor = UIColor.green
                
                
            } else if (decisionLabelOutlet.text == "BLAU!")
            {
                
                  decisionLabelOutlet.textColor = UIColor.blue
                
            
                
            } else if (decisionLabelOutlet.text == "BRAUN!")
            {
                
                  decisionLabelOutlet.textColor = UIColor.brown
                
            } else if (decisionLabelOutlet.text == "SCHWARZ!")
            {
              
                 decisionLabelOutlet.textColor = UIColor.black
                
            } else if (decisionLabelOutlet.text == "GELB!")
            {
               
                  decisionLabelOutlet.textColor = UIColor.yellow
                
            } else if (decisionLabelOutlet.text == "ORANGE!")
            {
               
                 decisionLabelOutlet.textColor = UIColor.orange
                
            } else if (decisionLabelOutlet.text == "GRAU!")
            {
                 decisionLabelOutlet.textColor = UIColor.gray
                
                
            } else if (decisionLabelOutlet.text == "LILA!")
            {
               
                  decisionLabelOutlet.textColor = UIColor.purple
                
            }else if (decisionLabelOutlet.text == "ROSA!")
            {
                
                 decisionLabelOutlet.textColor = UIColor.systemPink
                
            }
            
                
            
            
            
            
            
            
            
            
            
            decisionLabelOutlet.alpha = 1
            
        }
        
        
        
        
    
    
    }
    
    
    // Konfiguration des Picker-Views
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        
     return 3
        
        
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            
    
      
        return pickChoices[row]
        
        
    }
        
        
        
        
        
    
    
    
     
    
    
    
    
}


