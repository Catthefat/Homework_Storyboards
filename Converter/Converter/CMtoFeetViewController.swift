//
//  CMtoFeetViewController.swift
//  Converter
//
//  Created by kristians.tide on 16/11/2021.
//

import UIKit

class CMtoFeetViewController: UIViewController {

    @IBOutlet weak var CMtoFTSlider: UISlider!
    @IBOutlet weak var DisplayCMtoFT: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcCMtoFT(_ sender: Any) {
        let cmValue = Double(CMtoFTSlider.value)
        let ftValue = cmValue / 30.48
        let roundedCM = round(cmValue * 100) / 100
        let roundedFT = round(ftValue * 1000) / 1000
        DisplayCMtoFT.text = "\(roundedCM)CM is \(roundedFT)Feet"
        
//        (String(CMtoFTSlider.value)
        
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
