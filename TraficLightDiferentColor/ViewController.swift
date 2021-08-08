//
//  ViewController.swift
//  TraficLightDiferentColor
//
//  Created by Yurii Tykhonov on 08.08.2021.
//

import UIKit
import AVFoundation
//I used this information from SwiftBook

class ViewController: UIViewController {
    var switchingBetweenDiferentColors  = 0
    
    override var prefersStatusBarHidden: Bool {
        return true  }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        switchingBetweenDiferentColors += 1
    }
    fileprivate func updateUI() {
        switch switchingBetweenDiferentColors {
        case 1:
            view.backgroundColor = .green
        case 2:
            view.backgroundColor = .yellow
        case 3:
            view.backgroundColor = .red
        case 4:
            view.backgroundColor = .orange
        case 5:
            view.backgroundColor = .blue
        case 6:
            view.backgroundColor = .cyan
        case 7:
            view.backgroundColor = .purple
        case 8:
            view.backgroundColor = .brown
        case 9:
            view.backgroundColor = .white
        case 10:
            view.backgroundColor = .black
        switchingBetweenDiferentColors = 0
        default:
            break
        }
    }
    func toggleTorch(on:Bool) {
    guard
        let device = AVCaptureDevice.default(for: AVMediaType.video),device.hasTorch
    else {return}
        
    do{
        try device.lockForConfiguration()
    } catch {
        print("Torch could not beused")
    }
}


    @IBAction func flash(_ sender: UISwitch) {
        toggleTorch(on: sender.isOn)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        updateUI()
        switchingBetweenDiferentColors  += 1
    }
}



