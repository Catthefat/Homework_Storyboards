//
//  ViewController.swift
//  WeekDayFinder
//
//  Created by kristians.tide on 13/11/2021.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var dayCalcResult: UILabel!
    @IBOutlet weak var dayInput: UITextField!
    @IBOutlet weak var monthInput: UITextField!
    @IBOutlet weak var yearInput: UITextField!
    @IBOutlet weak var resultCalc: UILabel!
    @IBOutlet weak var findButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    
//
//    func formatterFunc() {
//        let currentDate = Date()
//        let formatter = DateFormatter()
//        formatter.timeZone = .current
//        formatter.locale = .current
//        formatter.dateFormat = "dd/MM/yyyy"
//        dayCalcResult.text = formatter.string(from: currentDate)
//
//        }
        
    @IBAction func dateCalculation(_ sender: Any) {
        
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()

        guard let day = Int(dayInput.text!),
              let month = Int(monthInput.text!),
              let year = Int(yearInput.text!) else {

            warningAlert(withTitle: "Input Error!", withMessage: "Date text fields can't be empty.")
                  return
              }
        
        dateComponents.day = day
        dateComponents.month = month
        dateComponents.year = year
        
        guard let date = calendar.date(from: dateComponents) else {return} // else {return} - wont crash the app. will catch that error
        let dateFormatter = DateFormatter()
            dateFormatter.locale = Locale(identifier: "en_EN")
            dateFormatter.dateFormat = "EEEE"
        
                switch findButton.titleLabel?.text {
                case "Find":
                    findButton.setTitle("Clear", for: .normal)
                    if day >= 1 && day <= 31 && month >= 1 && month <= 12 {
                        let weekday = dateFormatter.string(from: date)
                        dayCalcResult.text = weekday
                    }else {
                        warningAlert(withTitle: "Error!", withMessage: "Wrong Date!")
                    }
                default: findButton.setTitle("Find", for: .normal)
                    clearTextFields()
                }
        
                
                
//        func formatterFunc() {
//            let currentDate = Date()
//            let formatter = DateFormatter()
//            formatter.timeZone = .current
//            formatter.locale = .current
//            formatter.dateFormat = "dd/MM/yyyy"
//            dayCalcResult.text = formatter.string(from: currentDate)
//        }
//
//        let dateOfBirth = "\(String(describing: dayInput.text!))/\(String(describing: monthInput.text!))/\(String(describing: yearInput.text!))"
//        dayCalcResult.text = "\(dateOfBirth)"
//        print(dateOfBirth)
//
    }
    func clearTextFields() {
        dayInput.text = ""
        monthInput.text = ""
        yearInput.text = ""

    }
    
    
    func warningAlert(withTitle title: String?, withMessage message: String?) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction (title: "OK", style: .destructive, handler: nil)
    
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func ButtonToRecieveDate(_ sender: Any) {
        
//        let yearOfBirth = yearInput
//        let monthOfBirth = monthInput
//        let dayOfBirth = dayInput
        let dateNow = Date()
        let calendar = Calendar.current
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        
        let day = calendar.component(.day, from: dateNow)
        let month = calendar.component(.month, from: dateNow)
        let year = calendar.component(.year, from: dateNow)
        resultCalc.text = "Current Date is: \(day)/\(month)/\(year)"
//        var totalYearsFromBirth = calendar.component([.year], from: yearInput, to: year).year
//
        
        
        
    }
}



/*
 //setting up the dates
 let currentDate = Date()
 let myBirthDateString = ""
 let myBirthDay = formatter.date(from: myBirthDateString) ?? Date()
 
 //calculate
 var totalYearsFromBirthTwo = calendar.dateComponents([.year], from: myBirthDay, to: currentDate).year
 var totalMonthFromBirthTwo = calendar.dateComponents([.month], from: myBirthDay, to: currentDate).month
 var totalDaysFromBirthTwo = calendar.dateComponents([.day], from: myBirthDay, to: currentDate).day
 
 if totalYearsFromBirthTwo == 0 || totalMonthFromBirthTwo == 0 || totalDaysFromBirthTwo == 0 {
 print("unabale to check the total year, month, day due to wrong input")
 }else{
 print("Total years: \(totalYearsFromBirthTwo!) , total months: \(totalMonthFromBirthTwo!), total days: \(totalDaysFromBirthTwo!)")
 }
 */

