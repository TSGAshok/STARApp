//
//  SecondViewController.swift
//  DepressionApp1
//
//  Created by Ashok Nambisan on 11/29/22.
//

import UIKit

class SecondViewController: UIViewController, UINavigationControllerDelegate{
   
    @IBOutlet weak var switchbutton6: UISwitch!
    @IBOutlet weak var switchbutton7: UISwitch!
    @IBOutlet weak var switchbutton8: UISwitch!
    @IBOutlet weak var switchbutton9: UISwitch!
    @IBOutlet weak var switchbutton10: UISwitch!
    @IBOutlet weak var switchbutton11: UISwitch!
    @IBOutlet weak var switchbutton12: UISwitch!
    @IBOutlet weak var switchbutton13: UISwitch!
    @IBOutlet weak var switchbutton14: UISwitch!
    @IBOutlet weak var switchbutton15: UISwitch!
    @IBOutlet weak var switchbutton16: UISwitch!
    @IBOutlet weak var switchbutton17: UISwitch!
    @IBOutlet weak var switchbutton18: UISwitch!
    @IBOutlet weak var switchbutton19: UISwitch!
    @IBOutlet weak var switchbutton20: UISwitch!
    @IBOutlet weak var switchbutton21: UISwitch!
    @IBOutlet weak var switchbutton22: UISwitch!
    @IBOutlet weak var switchbutton23: UISwitch!
    @IBOutlet weak var switchbutton24: UISwitch!
    @IBOutlet weak var switchbutton25: UISwitch!
    @IBOutlet weak var switchbutton26: UISwitch!
    override func viewDidLoad(){
       
        super.viewDidLoad()
        switchbutton6.isOn = false
        let switchValue6 = UserDefaults.standard.integer(forKey: "switchValue6")
        switchbutton6.isOn = (switchValue6 == 1)
        
        switchbutton7.isOn = false
        let switchValue7 = UserDefaults.standard.integer(forKey: "switchValue7")
        switchbutton7.isOn = (switchValue7 == 1)
        
        switchbutton8.isOn = false
        let switchValue8 = UserDefaults.standard.integer(forKey: "switchValue8")
        switchbutton8.isOn = (switchValue8 == 1)
        
        switchbutton9.isOn = false
        let switchValue9 = UserDefaults.standard.integer(forKey: "switchValue9")
        switchbutton9.isOn = (switchValue9 == 1)
        
        switchbutton10.isOn = false
        let switchValue10 = UserDefaults.standard.integer(forKey: "switchValue10")
        switchbutton10.isOn = (switchValue10 == 1)
        
        switchbutton11.isOn = false
        let switchValue11 = UserDefaults.standard.integer(forKey: "switchValue11")
        switchbutton11.isOn = (switchValue11 == 1)
        
        switchbutton12.isOn = false
        let switchValue12 = UserDefaults.standard.integer(forKey: "switchValue12")
        switchbutton12.isOn = (switchValue12 == 1)
        
        switchbutton13.isOn = false
        let switchValue13 = UserDefaults.standard.integer(forKey: "switchValue13")
        switchbutton13.isOn = (switchValue13 == 1)
        
        switchbutton14.isOn = false
        let switchValue14 = UserDefaults.standard.integer(forKey: "switchValue14")
        switchbutton14.isOn = (switchValue14 == 1)
        
        switchbutton15.isOn = false
        let switchValue15 = UserDefaults.standard.integer(forKey: "switchValue15")
        switchbutton15.isOn = (switchValue15 == 1)
        
        switchbutton16.isOn = false
        let switchValue16 = UserDefaults.standard.integer(forKey: "switchValue16")
        switchbutton16.isOn = (switchValue16 == 1)
        
        switchbutton17.isOn = false
        let switchValue17 = UserDefaults.standard.integer(forKey: "switchValue17")
        switchbutton17.isOn = (switchValue17 == 1)
        
        switchbutton18.isOn = false
        let switchValue18 = UserDefaults.standard.integer(forKey: "switchValue18")
        switchbutton18.isOn = (switchValue18 == 1)
        
        switchbutton19.isOn = false
        let switchValue19 = UserDefaults.standard.integer(forKey: "switchValue19")
        switchbutton19.isOn = (switchValue19 == 1)
        
        switchbutton20.isOn = false
        let switchValue20 = UserDefaults.standard.integer(forKey: "switchValue20")
        switchbutton20.isOn = (switchValue20 == 1)
        
        switchbutton21.isOn = false
        let switchValue21 = UserDefaults.standard.integer(forKey: "switchValue21")
        switchbutton21.isOn = (switchValue21 == 1)
        
        switchbutton22.isOn = false
        let switchValue22 = UserDefaults.standard.integer(forKey: "switchValue22")
        switchbutton22.isOn = (switchValue22 == 1)
        
        switchbutton23.isOn = false
        let switchValue23 = UserDefaults.standard.integer(forKey: "switchValue23")
        switchbutton23.isOn = (switchValue23 == 1)
        
        switchbutton24.isOn = false
        let switchValue24 = UserDefaults.standard.integer(forKey: "switchValue24")
        switchbutton24.isOn = (switchValue24 == 1)
        
        switchbutton25.isOn = false
        let switchValue25 = UserDefaults.standard.integer(forKey: "switchValue25")
        switchbutton25.isOn = (switchValue25 == 1)
        
        switchbutton26.isOn = false
        let switchValue26 = UserDefaults.standard.integer(forKey: "switchValue26")
        switchbutton26.isOn = (switchValue26 == 1)
        
        
        

    }
  
    
    @IBAction func nextButton(){
       let vtc = storyboard?.instantiateViewController(withIdentifier: "next") as! NextViewController
          vtc.modalPresentationStyle = .fullScreen
          present(vtc,animated: true)
        UserDefaults.standard.set(switchbutton6.isOn ? 1 : 0, forKey: "switchValue6")
        MyVariables.Switch7 = switchbutton6.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton7.isOn ? 1 : 0, forKey: "switchValue7")
        MyVariables.Switch8 = switchbutton7.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton8.isOn ? 1 : 0, forKey: "switchValue8")
        MyVariables.Switch9 = switchbutton8.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton9.isOn ? 1 : 0, forKey: "switchValue9")
        MyVariables.Switch10 = switchbutton9.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton10.isOn ? 1 : 0, forKey: "switchValue10")
        MyVariables.Switch11 = switchbutton10.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton11.isOn ? 1 : 0, forKey: "switchValue11")
        MyVariables.Switch12 = switchbutton11.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton12.isOn ? 1 : 0, forKey: "switchValue12")
        MyVariables.Switch13 = switchbutton12.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton13.isOn ? 1 : 0, forKey: "switchValue13")
        MyVariables.Switch14 = switchbutton13.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton14.isOn ? 1 : 0, forKey: "switchValue14")
        MyVariables.Switch15 = switchbutton14.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton15.isOn ? 1 : 0, forKey: "switchValue15")
        MyVariables.Switch16 = switchbutton15.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton16.isOn ? 1 : 0, forKey: "switchValue16")
        MyVariables.Switch17 = switchbutton16.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton17.isOn ? 1 : 0, forKey: "switchValue17")
        MyVariables.Switch18 = switchbutton17.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton18.isOn ? 1 : 0, forKey: "switchValue18")
        MyVariables.Switch19 = switchbutton18.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton19.isOn ? 1 : 0, forKey: "switchValue19")
        MyVariables.Switch20 = switchbutton19.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton20.isOn ? 1 : 0, forKey: "switchValue20")
        MyVariables.Switch21 = switchbutton20.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton21.isOn ? 1 : 0, forKey: "switchValue21")
        MyVariables.Switch22 = switchbutton21.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton22.isOn ? 1 : 0, forKey: "switchValue22")
        MyVariables.Switch23 = switchbutton22.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton23.isOn ? 1 : 0, forKey: "switchValue23")
        MyVariables.Switch24 = switchbutton23.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton24.isOn ? 1 : 0, forKey: "switchValue24")
        MyVariables.Switch25 = switchbutton24.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton25.isOn ? 1 : 0, forKey: "switchValue25")
        MyVariables.Switch26 = switchbutton25.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton26.isOn ? 1 : 0, forKey: "switchValue26")
        MyVariables.Switch27 = switchbutton26.isOn ? 1 : 0

      }
    
    @IBAction func prevbutton(){
    
        let vlc = storyboard?.instantiateViewController(withIdentifier: "h") as! ViewController
        vlc.modalPresentationStyle = .fullScreen
        present(vlc,animated: true)
        UserDefaults.standard.set(switchbutton6.isOn ? 1 : 0, forKey: "switchValue6")
        MyVariables.Switch7 = switchbutton6.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton7.isOn ? 1 : 0, forKey: "switchValue7")
        MyVariables.Switch8 = switchbutton7.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton8.isOn ? 1 : 0, forKey: "switchValue8")
        MyVariables.Switch9 = switchbutton8.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton9.isOn ? 1 : 0, forKey: "switchValue9")
        MyVariables.Switch10 = switchbutton9.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton10.isOn ? 1 : 0, forKey: "switchValue10")
        MyVariables.Switch11 = switchbutton10.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton11.isOn ? 1 : 0, forKey: "switchValue11")
        MyVariables.Switch12 = switchbutton11.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton12.isOn ? 1 : 0, forKey: "switchValue12")
        MyVariables.Switch13 = switchbutton12.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton13.isOn ? 1 : 0, forKey: "switchValue13")
        MyVariables.Switch14 = switchbutton13.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton14.isOn ? 1 : 0, forKey: "switchValue14")
        MyVariables.Switch15 = switchbutton14.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton15.isOn ? 1 : 0, forKey: "switchValue15")
        MyVariables.Switch16 = switchbutton15.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton16.isOn ? 1 : 0, forKey: "switchValue16")
        MyVariables.Switch17 = switchbutton16.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton17.isOn ? 1 : 0, forKey: "switchValue17")
        MyVariables.Switch18 = switchbutton17.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton18.isOn ? 1 : 0, forKey: "switchValue18")
        MyVariables.Switch19 = switchbutton18.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton19.isOn ? 1 : 0, forKey: "switchValue19")
        MyVariables.Switch20 = switchbutton19.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton20.isOn ? 1 : 0, forKey: "switchValue20")
        MyVariables.Switch21 = switchbutton20.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton21.isOn ? 1 : 0, forKey: "switchValue21")
        MyVariables.Switch22 = switchbutton21.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton22.isOn ? 1 : 0, forKey: "switchValue22")
        MyVariables.Switch23 = switchbutton22.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton23.isOn ? 1 : 0, forKey: "switchValue23")
        MyVariables.Switch24 = switchbutton23.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton24.isOn ? 1 : 0, forKey: "switchValue24")
        MyVariables.Switch25 = switchbutton24.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton25.isOn ? 1 : 0, forKey: "switchValue25")
        MyVariables.Switch26 = switchbutton25.isOn ? 1 : 0
        UserDefaults.standard.set(switchbutton26.isOn ? 1 : 0, forKey: "switchValue26")
        MyVariables.Switch27 = switchbutton26.isOn ? 1 : 0
    }
    
    
}
