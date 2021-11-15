//
//  AppearanceViewController.swift
//  WeekDayFinder
//
//  Created by kristians.tide on 15/11/2021.
//

import UIKit

class AppearanceViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func openSettingsButtonTapped(_ sender: Any) {
        openSettings()
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
        func openSettings(){
            guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {return} //opens settings
            
            if UIApplication.shared.canOpenURL(settingsURL) {
                UIApplication.shared.open(settingsURL, options: [:]) { success in
                    print("open", success)
                }
            }
        
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
