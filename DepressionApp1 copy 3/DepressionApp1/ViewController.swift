//
//  ViewController.swift
//  DepressionApp1
//
//  Created by Ashok Nambisan on 10/30/22.
//

import UIKit
import UserNotifications

struct MyVariables {
    static var Switch1 = 0
    static var Switch2 = 0
    static var Switch3 = 0
    static var Switch4 = 0
    static var Switch5 = 0
    static var Switch6 = 0
    static var Switch7 = 0
    static var Switch8 = 0
    static var Switch9 = 0
    static var Switch10 = 0
    static var Switch11 = 0
    static var Switch12 = 0
    static var Switch13 = 0
    static var Switch14 = 0
    static var Switch15 = 0
    static var Switch16 = 0
    static var Switch17 = 0
    static var Switch18 = 0
    static var Switch19 = 0
    static var Switch20 = 0
    static var Switch21 = 0
    static var Switch22 = 0
    static var Switch23 = 0
    static var Switch24 = 0
    static var Switch25 = 0
    static var Switch26 = 0
    static var Switch27 = 0
    
}
class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var imageview: UIImageView!
    
   
    @IBOutlet weak var switchButton1: UISwitch!
    @IBOutlet weak var switchButton: UISwitch!
    @IBOutlet weak var switchButton2: UISwitch!
    @IBOutlet weak var switchButton3: UISwitch!
    
    @IBOutlet weak var switchButton5: UISwitch!
    @IBOutlet weak var switchButton4: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        checkForPermission()
        if let imageData = UserDefaults.standard.data(forKey: "imageData") {
            let image = UIImage(data: imageData)
            imageview.image = image
           
               }
    
        switchButton.isOn = false
                    let switchValue = UserDefaults.standard.integer(forKey: "switchValue")
                    switchButton.isOn = (switchValue == 1)
        switchButton1.isOn = false
                    let switchValue1 = UserDefaults.standard.integer(forKey: "switchValue1")
                    switchButton1.isOn = (switchValue1 == 1)
        switchButton2.isOn = false
        let switchValue2 = UserDefaults.standard.integer(forKey: "switchValue2")
                    switchButton2.isOn = (switchValue2 == 1)
        switchButton3.isOn = false
        let switchValue3 = UserDefaults.standard.integer(forKey: "switchValue3")
                    switchButton3.isOn = (switchValue3 == 1)
        switchButton4.isOn = false
        let switchValue4 = UserDefaults.standard.integer(forKey: "switchValue4")
                    switchButton4.isOn = (switchValue4 == 1)
        switchButton5.isOn = false
        let switchValue5 = UserDefaults.standard.integer(forKey: "switchValue5")
                    switchButton5.isOn = (switchValue5 == 1)
    }
    @IBAction func Btnimagepicker(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.allowsEditing=true
        picker.delegate=self
        present(picker, animated:true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image=info[.editedImage] as? UIImage else {return}
        imageview.image=image
        
        let imageData = image.jpegData(compressionQuality: 0.5)
        UserDefaults.standard.set(imageData, forKey: "imageData")
            if let imageData = imageData {
                
                let imageDataBase64String = imageData.base64EncodedString()
                
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                appDelegate.myData = imageDataBase64String
                UserDefaults.standard.set(imageDataBase64String, forKey: "imageDataBase64String")

            }
       
        dismiss(animated:true)
    
    }
    func checkForPermission(){
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.getNotificationSettings { settings in
            switch settings.authorizationStatus {
            case .authorized:
                self.dispatchNotification()
            case .denied:
                return
            case .notDetermined:
                notificationCenter.requestAuthorization(options: [.alert,.sound]) { didAllow, error in
                    if didAllow {
                        self.dispatchNotification()
                    }
                    
                }
            default:
                return
            }
            
        }
    }
    
    func dispatchNotification(){
        let identifier = "daily reminder"
        let title = "Reminder to submit your image in STAR app!"
        let body = "It is very important for the study to submit daily"
        let hour = 17
        let minute = 0
        let isDaily = true
        let notificationCenter = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        content.sound = .default
        
        let calender = Calendar.current
        var dateComponents = DateComponents(calendar:calender, timeZone:TimeZone.current)
        dateComponents.hour = hour
        dateComponents.minute = minute
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: isDaily)
        let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
        notificationCenter.removePendingNotificationRequests(withIdentifiers: [identifier])
        notificationCenter.add(request)
    }
    @IBAction func didTapButton(){
        
        
        
        UserDefaults.standard.set(switchButton.isOn ? 1 : 0, forKey: "switchValue")
        MyVariables.Switch1 = switchButton.isOn ? 1 : 0
        UserDefaults.standard.set(switchButton1.isOn ? 1 : 0, forKey: "switchValue1")
        MyVariables.Switch2 = switchButton1.isOn ? 1 : 0
        UserDefaults.standard.set(switchButton2.isOn ? 1 : 0, forKey: "switchValue2")
        MyVariables.Switch3 = switchButton2.isOn ? 1 : 0
        UserDefaults.standard.set(switchButton3.isOn ? 1 : 0, forKey: "switchValue3")
        MyVariables.Switch4 = switchButton3.isOn ? 1 : 0
        UserDefaults.standard.set(switchButton4.isOn ? 1 : 0, forKey: "switchValue4")
        MyVariables.Switch5 = switchButton4.isOn ? 1 : 0
        UserDefaults.standard.set(switchButton5.isOn ? 1 : 0, forKey: "switchValue5")
        MyVariables.Switch6 = switchButton5.isOn ? 1 : 0

        let vc = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    }
}

