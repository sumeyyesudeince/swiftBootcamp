//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by Sude İnce on 6.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var mSwitch: UISwitch!
    
    @IBOutlet weak var labelSlider: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var segmentedController: UISegmentedControl!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var labelStepper: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSlider.text = String(Int(slider.value))
        labelStepper.text = String(Int(stepper.value))
        indicator.isHidden = true
    }
    
    @IBAction func buttonYap(_ sender: Any) {
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri
            
        }
    }
    
    @IBAction func buttonKalp(_ sender: Any) {
        imageView.image = UIImage(named: "kalp")
    }
    
    
    @IBAction func buttonYildiz(_ sender: Any) {
        imageView.image = UIImage(named: "yildiz")
    }
    
    
    
    
    
    @IBAction func switchDegisim(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch : ON")
        }else{
            print("Switch : OFF")
        }
    }
    
    
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl) {
        let secilenIndeks = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndeks)
        print("Seçim : \(secilenKategori!)")
    }
    
    
    @IBAction func sliderDegisim(_ sender: UISlider) {
        labelSlider.text = String(Int(sender.value))
    }
    
    @IBAction func stepperDegisim(_ sender: UIStepper) {
        labelStepper.text = String(Int(sender.value))
    }
    
    
    @IBAction func buttonBasla(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    
    
    @IBAction func buttonBitir(_ sender: Any) {
        indicator.isHidden = false
        indicator.stopAnimating()
    }
    
    
    @IBAction func buttonGoster(_ sender: Any) {
        print("Switch Durum :  \(mSwitch.isOn)")
        let secilenIndeks = segmentedController.selectedSegmentIndex
        let secilenKategori = segmentedController.titleForSegment(at: secilenIndeks)
        print("Segmented Kategori : \(secilenKategori!)")
        print("Slider Durum: \(slider.value)")
        print("Stepper Durumu: \(stepper.value)")
    }
    
    
    
}

