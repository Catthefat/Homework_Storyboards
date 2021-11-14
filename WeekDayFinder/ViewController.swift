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
        
        func formatterFunc() {
            let currentDate = Date()
            let formatter = DateFormatter()
            formatter.timeZone = .current
            formatter.locale = .current
            formatter.dateFormat = "dd/MM/yyyy"
            dayCalcResult.text = formatter.string(from: currentDate)
        }
        
        let dateOfBirth = "\(String(describing: dayInput.text!))/\(String(describing: monthInput.text!))/\(String(describing: yearInput.text!))"
        dayCalcResult.text = "\(dateOfBirth)"
        print(dateOfBirth)
        
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

