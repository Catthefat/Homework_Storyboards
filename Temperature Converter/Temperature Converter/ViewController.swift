//
//  ViewController.swift
//  Temperature Converter
//
//  Created by kristians.tide on 13/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempConvLbl: UILabel!
    @IBOutlet weak var celcNumLbl: UILabel!
    @IBOutlet weak var KelvinFahrnSegmentControler: UISegmentedControl!
    @IBOutlet weak var celcNumSlider2: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func SliderTempChange(_ sender: Any) {
        celcNumLbl.text = String(Int(round(celcNumSlider2.value))) + "ºC"
        let celcTemp: Int = Int(celcNumSlider2.value)
        let kelvinTemp: Float = Float(celcTemp) + 273.15
        let FahrenTemp: Int = Int(Double(celcTemp * 9 / 5 + 32))
        
        if KelvinFahrnSegmentControler.selectedSegmentIndex == 0 {
            tempConvLbl.text = String(kelvinTemp) + "ºK"
        }else if KelvinFahrnSegmentControler.selectedSegmentIndex == 1 {
            tempConvLbl.text = String(FahrenTemp) + "ºF"

        }
        
    }
    
}

