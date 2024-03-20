//
//  LastViewController.swift
//  DepressionApp1
//
//  Created by Satish on 5/21/23.
//

import UIKit

class LastViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let m = MyVariables.Switch27
        print(m)
        if (m==1){
            suicidewarning.text=String("If you are feeling suicidal, please call your doctor, the 988 crisis hotline, or one of the hotlines available here: https://pflag.org/resource/support-hotlines/")

        }
        Thanks.layer.cornerRadius = 10.0
        Disclaimer.layer.cornerRadius = 10.0
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var Thanks: UILabel!
    
    @IBOutlet weak var Disclaimer: UILabel!
    
    
    @IBOutlet weak var suicidewarning: UILabel!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
