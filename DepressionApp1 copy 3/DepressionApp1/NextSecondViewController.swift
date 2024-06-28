//
//  NextSecondViewController.swift
//  DepressionApp1
//
//  Created by Ashok Nambisan on 12/2/22.
//

import UIKit
import Foundation
struct ResponseObject<T: Decodable>: Decodable {
    let form: T
}

struct Foo: Decodable {
    let name: String
}
extension Dictionary {
    func percentEncoded() -> Data? {
        map { key, value in
            let escapedKey = "\(key)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""
            let escapedValue = "\(value)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""
            return escapedKey + "=" + escapedValue
        }
        .joined(separator: "&")
        .data(using: .utf8)
    }
}

extension CharacterSet {
    static let urlQueryValueAllowed: CharacterSet = {
        let generalDelimitersToEncode = ":#[]@" // does not include "?" or "/" due to RFC 3986 - Section 3.4
        let subDelimitersToEncode = "!$&'()*+,;="
        
        var allowed: CharacterSet = .urlQueryAllowed
        allowed.remove(charactersIn: "\(generalDelimitersToEncode)\(subDelimitersToEncode)")
        return allowed
    }()
}
class NextViewController: UIViewController {
    
    @IBOutlet weak var switchbutton27: UISwitch!
    @IBOutlet weak var switchbutton28: UISwitch!
    @IBOutlet weak var switchbutton29: UISwitch!
    @IBOutlet weak var switchbutton30: UISwitch!
    @IBOutlet weak var switchbutton31: UISwitch!
    @IBOutlet weak var switchbutton32: UISwitch!
    @IBOutlet weak var switchbutton33: UISwitch!
    @IBOutlet weak var switchbutton34: UISwitch!
    @IBOutlet weak var switchbutton35: UISwitch!
    @IBOutlet weak var switchbutton36: UISwitch!
    @IBOutlet weak var switchbutton38: UISwitch!
    @IBOutlet weak var switchbutton39: UISwitch!
    @IBOutlet var Text: UITextView!

    @IBOutlet weak var other: UITextField!
    @IBOutlet weak var textg: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchbutton27.isOn = false
        let switchValue27 = UserDefaults.standard.integer(forKey: "switchValue27")
        switchbutton27.isOn = (switchValue27 == 1)
        switchbutton28.isOn = false
        let switchValue28 = UserDefaults.standard.integer(forKey: "switchValue28")
        switchbutton28.isOn = (switchValue28 == 1)
        switchbutton29.isOn = false
        let switchValue29 = UserDefaults.standard.integer(forKey: "switchValue29")
        switchbutton29.isOn = (switchValue29 == 1)
        switchbutton30.isOn = false
        let switchValue30 = UserDefaults.standard.integer(forKey: "switchValue30")
        switchbutton30.isOn = (switchValue30 == 1)
        switchbutton31.isOn = false
        let switchValue31 = UserDefaults.standard.integer(forKey: "switchValue31")
        switchbutton31.isOn = (switchValue31 == 1)
        switchbutton32.isOn = false
        let switchValue32 = UserDefaults.standard.integer(forKey: "switchValue32")
        switchbutton32.isOn = (switchValue32 == 1)
        switchbutton33.isOn = false
        let switchValue33 = UserDefaults.standard.integer(forKey: "switchValue33")
        switchbutton33.isOn = (switchValue33 == 1)
        switchbutton34.isOn = false
        let switchValue34 = UserDefaults.standard.integer(forKey: "switchValue34")
        switchbutton34.isOn = (switchValue34 == 1)
        switchbutton35.isOn = false
        let switchValue35 = UserDefaults.standard.integer(forKey: "switchValue35")
        switchbutton35.isOn = (switchValue35 == 1)
        switchbutton36.isOn = false
        let switchValue36 = UserDefaults.standard.integer(forKey: "switchValue36")
        switchbutton36.isOn = (switchValue36 == 1)
        switchbutton38.isOn = false
        let switchValue38 = UserDefaults.standard.integer(forKey: "switchValue37")
        switchbutton38.isOn = (switchValue38 == 1)
        switchbutton39.isOn = false
        let switchValue39 = UserDefaults.standard.integer(forKey: "switchValue38")
        switchbutton39.isOn = (switchValue39 == 1)
        let userid = UserDefaults.standard.string(forKey: "Userid")
        textg.text = userid
        let other1 = UserDefaults.standard.string(forKey: "Other")
        other.text = other1
        
        initializeHideKeyboard()
         }
    func initializeHideKeyboard(){
     //Declare a Tap Gesture Recognizer which will trigger our dismissMyKeyboard() function
     let tap: UITapGestureRecognizer = UITapGestureRecognizer(
     target: self,
     action: #selector(dismissMyKeyboard))
     //Add this tap gesture recognizer to the parent view
     view.addGestureRecognizer(tap)
     }
    @objc func dismissMyKeyboard(){
     //endEditing causes the view (or one of its embedded text fields) to resign the first responder status.
     //In short- Dismiss the active keyboard.
     view.endEditing(true)
     }
    @IBOutlet weak var labelf: UILabel!
  
    
    @IBAction func Submit(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let imageDataBase64String = UserDefaults.standard.string(forKey: "imageDataBase64String")
        
      
        let listofuserid = ["ab234","bn458","bg890","gm490","cf345","vb678","ty654","pk543","df675","hg789","sd369","vk884","sn562","vn671","aj391","kf405","fg790","dd645","km234","db344"]

        if(listofuserid.contains(textg.text!)==false){
            let dialogMessage = UIAlertController(title: "Sorry", message: "This Userid value is invalid", preferredStyle: .alert)
            
            // Create OK button with action handler
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok button tapped")
             })
            
            //Add OK button to a dialog message
            dialogMessage.addAction(ok)
            // Present Alert to
            self.present(dialogMessage, animated: true, completion: nil)
            return
        }
        //created NSURL
        let url = Foundation.URL(string: "https://myhestia.org/starapp/insert.php")!
                //creating NSMutableURLRequest
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        let username = "Username"
        let password = "password
        let loginString = String(format: "%@:%@", username, password)
        let loginData = loginString.data(using: String.Encoding.utf8)!
        let base64LoginString = loginData.base64EncodedString()
        

                //setting the method to post
        request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
               
        
                //getting values from text fields
        
        let glad = MyVariables.Switch1
        let delighted = MyVariables.Switch2
        let overjoyed = MyVariables.Switch3
        let competent = MyVariables.Switch4
        let proud = MyVariables.Switch5
        let daring = MyVariables.Switch6
        let accepted = MyVariables.Switch7
        let valued = MyVariables.Switch8
        let admired = MyVariables.Switch9
        let liked = MyVariables.Switch10
        let loved = MyVariables.Switch11
        let adored = MyVariables.Switch12
        let alone = MyVariables.Switch13
        let lonely = MyVariables.Switch14
        let isolated = MyVariables.Switch15
        let slighted = MyVariables.Switch16
        let disrespected = MyVariables.Switch17
        let humiliated = MyVariables.Switch18
        let letdown = MyVariables.Switch19
        let disappointed = MyVariables.Switch20
        let crushed = MyVariables.Switch21
        let uncertain = MyVariables.Switch22
        let weak = MyVariables.Switch23
        let helpless = MyVariables.Switch24
        let lost = MyVariables.Switch25
        let hopeless = MyVariables.Switch26
        let suicidal = MyVariables.Switch27
        let unhappy = switchbutton27.isOn ? 1 : 0
        let sad = switchbutton28.isOn ? 1 : 0
        let miserable = switchbutton29.isOn ? 1 : 0
        let annoyed = switchbutton30.isOn ? 1 : 0
        let frustrated = switchbutton31.isOn ? 1 : 0
        let furious = switchbutton32.isOn ? 1 : 0
        let upset = switchbutton33.isOn ? 1 : 0
        let bitter = switchbutton34.isOn ? 1 : 0
        let indignant = switchbutton35.isOn ? 1 : 0
        let worried = switchbutton36.isOn ? 1 : 0
        let threatened = switchbutton38.isOn ? 1 : 0
        let terrified = switchbutton39.isOn ? 1 : 0
    
        

        print(textg.text!)
        let currentDateTime = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:s"
        let formattedDate = dateFormatter.string(from: currentDateTime)
        print(formattedDate)
        
        
      
        
        let parameters: [String: Any] = [
            "userid": textg.text!,
            "imagekey": imageDataBase64String!,
            "date": formattedDate,
            "glad": glad,
            "delighted": delighted,
            "overjoyed": overjoyed,
            "competent": competent,
            "proud": proud,
            "daring": daring,
            "accepted": accepted,
            "valued":valued,
            "admired":admired,
            "liked":liked,
            "loved":loved,
            "adored":adored,
            "alone":alone,
            "lonely":lonely,
            "isolated":isolated,
            "slighted":slighted,
            "disrespected":disrespected,
            "humiliated":humiliated,
            "letdown":letdown,
            "disappointed":disappointed,
            "crushed":crushed,
            "uncertain":uncertain,
            "weak":weak,
            "helpless":helpless,
            "lost":lost,
            "hopeless":hopeless,
            "suicidal":suicidal,
            "unhappy":unhappy,
            "sad":sad,
            "miserable":miserable,
            "annoyed":annoyed,
            "frustrated":frustrated,
            "furious":furious,
            "upset":upset,
            "bitter":bitter,
            "indignant":indignant,
            "worried":worried,
            "threatened":threatened,
            "terrified":terrified,
            "otheremotion":other.text!
            
            
            
            
            
            
            
        ]
        
        request.httpBody = parameters.percentEncoded()
        print(parameters)
        print("URLRequest: \(request)")
      
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard
                let data = data,
                let response = response as? HTTPURLResponse,
                error == nil
            else {                                                               // check for fundamental networking error
                print("error", error ?? URLError(.badServerResponse))
                return
            }
            guard (200 ... 299).contains(response.statusCode) else {
                                // Handle HTTP error
                                print("statusCode should be 2xx, but is \(response.statusCode)")
                                print("response:", response)
                                
                                return
                        }
            do {
                    let responseObject = try JSONDecoder().decode(ResponseObject<Foo>.self, from: data)
                    print(responseObject)
                

                } catch {
                    print(error) // parsing error
                    
                    if let responseString = String(data: data, encoding: .utf8) {
                        print("responseString = \(responseString)")
                    } else {
                        print("unable to parse response as string")
                    }
                }
                    }

                    task.resume()
                //executing the task
        UserDefaults.standard.set(textg.text, forKey:"Userid")
        UserDefaults.standard.removeObject(forKey: "imageData")
        UserDefaults.standard.removeObject(forKey: "switchValue")
        UserDefaults.standard.removeObject(forKey: "switchValue1")
        UserDefaults.standard.removeObject(forKey: "switchValue2")
        UserDefaults.standard.removeObject(forKey: "switchValue3")
        UserDefaults.standard.removeObject(forKey: "switchValue4")
        UserDefaults.standard.removeObject(forKey: "switchValue5")
        UserDefaults.standard.removeObject(forKey: "switchValue6")
        UserDefaults.standard.removeObject(forKey: "switchValue7")
        UserDefaults.standard.removeObject(forKey: "switchValue8")
        UserDefaults.standard.removeObject(forKey: "switchValue9")
        UserDefaults.standard.removeObject(forKey: "switchValue10")
        UserDefaults.standard.removeObject(forKey: "switchValue11")
        UserDefaults.standard.removeObject(forKey: "switchValue12")
        UserDefaults.standard.removeObject(forKey: "switchValue13")
        UserDefaults.standard.removeObject(forKey: "switchValue14")
        UserDefaults.standard.removeObject(forKey: "switchValue15")
        UserDefaults.standard.removeObject(forKey: "switchValue16")
        UserDefaults.standard.removeObject(forKey: "switchValue17")
        UserDefaults.standard.removeObject(forKey: "switchValue18")
        UserDefaults.standard.removeObject(forKey: "switchValue19")
        UserDefaults.standard.removeObject(forKey: "switchValue20")
        UserDefaults.standard.removeObject(forKey: "switchValue21")
        UserDefaults.standard.removeObject(forKey: "switchValue22")
        UserDefaults.standard.removeObject(forKey: "switchValue23")
        UserDefaults.standard.removeObject(forKey: "switchValue24")
        UserDefaults.standard.removeObject(forKey: "switchValue25")
        UserDefaults.standard.removeObject(forKey: "switchValue26")
        UserDefaults.standard.removeObject(forKey: "switchValue27")
        UserDefaults.standard.removeObject(forKey: "switchValue28")
        UserDefaults.standard.removeObject(forKey: "switchValue29")
        UserDefaults.standard.removeObject(forKey: "switchValue30")
        UserDefaults.standard.removeObject(forKey: "switchValue31")
        UserDefaults.standard.removeObject(forKey: "switchValue32")
        UserDefaults.standard.removeObject(forKey: "switchValue33")
        UserDefaults.standard.removeObject(forKey: "switchValue34")
        UserDefaults.standard.removeObject(forKey: "switchValue35")
        UserDefaults.standard.removeObject(forKey: "switchValue36")
        UserDefaults.standard.removeObject(forKey: "switchValue37")
        UserDefaults.standard.removeObject(forKey: "switchValue38")
        
    
                                                      }
    
    @IBAction func previbutton(_ sender: Any) {
        let vmc = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        vmc.modalPresentationStyle  = .fullScreen
        present(vmc,animated:true)
        UserDefaults.standard.set(textg.text, forKey:"Userid")
        UserDefaults.standard.set(switchbutton27.isOn ? 1 : 0, forKey: "switchValue27")
        UserDefaults.standard.set(switchbutton28.isOn ? 1 : 0, forKey: "switchValue28")
        UserDefaults.standard.set(switchbutton29.isOn ? 1 : 0, forKey: "switchValue29")
        UserDefaults.standard.set(switchbutton30.isOn ? 1 : 0, forKey: "switchValue30")
        UserDefaults.standard.set(switchbutton31.isOn ? 1 : 0, forKey: "switchValue31")
        UserDefaults.standard.set(switchbutton32.isOn ? 1 : 0, forKey: "switchValue32")
        UserDefaults.standard.set(switchbutton33.isOn ? 1 : 0, forKey: "switchValue33")
        UserDefaults.standard.set(switchbutton34.isOn ? 1 : 0, forKey: "switchValue34")
        UserDefaults.standard.set(switchbutton35.isOn ? 1 : 0, forKey: "switchValue35")
        UserDefaults.standard.set(switchbutton36.isOn ? 1 : 0, forKey: "switchValue36")
        UserDefaults.standard.set(switchbutton38.isOn ? 1 : 0, forKey: "switchValue37")
        UserDefaults.standard.set(switchbutton39.isOn ? 1 : 0, forKey: "switchValue38")
        UserDefaults.standard.set(other.text, forKey: "Other")
        
    }
}
