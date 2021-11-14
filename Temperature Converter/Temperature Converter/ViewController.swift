//
//  ViewController.swift
//  Temperature Converter
//
//  Created by kristians.tide on 13/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempConvLbl: UILabel!
    @IBOutlet weak var celcNumSlider: UISlider!
    @IBOutlet weak var celcNumLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func sliderToLbl(_ sender: Any) {
        celcNumLbl.text = String(Int(round(celcNumSlider.value))) + "ºC"
    }
    
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        let celcTemp: Int = Int(celcNumSlider.value)
        let kelvinTemp: Double = 273.15
//        let FahrenTemp: Int = (celcTemp * (9 / 5)) + 32
        if sender.selectedSegmentIndex == 0{
            tempConvLbl.text = String(Float(kelvinTemp + Double(celcTemp))) + "ºK"
        }else if sender.selectedSegmentIndex == 1{
            tempConvLbl.text = String(Double(celcTemp * 9) / 5 + 32) + "ºF"
        }
    }
}

