//
//  KMtoMilesViewController.swift
//  Converter
//
//  Created by kristians.tide on 16/11/2021.
//

import UIKit

class KMtoMilesViewController: UIViewController {

    @IBOutlet weak var CalcMilesButton: UIButton!
    @IBOutlet weak var MilesTextField: UILabel!
    @IBOutlet weak var KmInputField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func CalculateMiles(_ sender: Any) {
    
        guard let km = Int(KmInputField.text!)
        else {
              warningAlert(withTitle: "Input Error!", withMessage: "Kilometer input field can't be empty.")
        return
        }
        let miles = round((Double(km) / 1.609) * 100) / 100
        MilesTextField.text = String(miles)
        
    
    
    func warningAlert(withTitle title: String?, withMessage message: String?) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction (title: "OK", style: .destructive, handler: nil)
    
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
