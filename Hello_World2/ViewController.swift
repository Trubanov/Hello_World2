//
//  ViewController.swift
//  Hello_World2
//
//  Created by Надежда Говор on 14.01.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentControll: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    @IBOutlet var buttonOne: UIButton!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var switchOne: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentControll.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(30)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .blue
        slider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        buttonOne.layer.cornerRadius = 10
        
        textField.backgroundColor = .white
        textField.keyboardType = .numberPad
    }

    @IBAction func controlAction(_ sender: Any) {
        switch segmentControll.selectedSegmentIndex {
        case 0:
            mainLabel.text = "Выбран сегмент с индексом 0"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "Выбран сегмент с индексом 1"
            mainLabel.textColor = .green
        case 2:
            mainLabel.text = "Выбран сегмент с индексом 2"
            mainLabel.textColor = .yellow
        default: break
        }
    }
    @IBAction func sliderAction() {
        mainLabel.text = String(Int(slider.value))
    }
    
    @IBAction func mainButtonAction(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else {return}
            mainLabel.text = text
    }
    
    @IBAction func datePickerAction(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        
        mainLabel.text = dateFormatter.string(from: datePicker.date)
    }
    
    @IBAction func toogleElements(_ sender: Any) {
        segmentControll.isHidden = !switchOne.isOn
        mainLabel.isHidden = !switchOne.isOn
        slider.isHidden = !switchOne.isOn
        textField.isHidden = !switchOne.isOn
        buttonOne.isHidden = !switchOne.isOn
        datePicker.isHidden = !switchOne.isOn
        sleep(UInt32(0.8))
    }
}


