//
//  ViewController.swift
//  ImageView
//
//  Created by 이태규 on 2021/05/27.
//

import UIKit

class ViewController: UIViewController {
    var numImage = 1
    var imgSet: UIImage?
    let maxImage = 6
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnBefore: UIButton!
    @IBOutlet var btnNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgSet = UIImage(named: String(numImage) + ".png")
        imgView.image = imgSet
    }

    @IBAction func showBeforeImage(_ sender: UIButton) {
        if (numImage<=1) {
            numImage = maxImage
        }else {
            numImage-=1
        }
        let imageName = String(numImage) + ".png"
        imgView.image = UIImage(named: imageName)
    }
    
    @IBAction func showNextImage(_ sender: UIButton) {
        if (numImage>=maxImage){
            numImage = 1
        } else {
            numImage+=1
        }
        let imageName = String(numImage) + ".png"
        imgView.image = UIImage(named: imageName)
    }
}

