//
//  ViewController.swift
//  SlideshowApp
//
//  Created by plazima on 2020/10/18.
//  Copyright © 2020 takumi.hatae. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var beforeButton: UIButton!
    
    var timer : Timer!
    
    var timer_sec : Float = 0
    
    var index: Int = 0
    
    let images: [String] = ["slide00.jpg", "slide01.jpg", "slide02.jpg" ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named:self.images[self.index])
    }
    
    @objc func updateTimer(_ timer: Timer) {
         self.index += 1
         if self.index == images.count {
         self.index = 0
        }
        self.imageView.image = UIImage(named:self.images[self.index])
    }
    
    
    @IBAction func forward(_ sender: Any) {
    if  self.timer == nil {
                     self.index += 1
                     if self.index == images.count {
                         self.index = 0
                     }
        imageView.image = UIImage(named:self.images[self.index])
                 }
    }
    
    @IBAction func pause(_ sender: Any) {
        if self.timer == nil {
            self.nextButton.isEnabled = false
            self.beforeButton.isEnabled = false
            self.index += 1
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector:
                #selector(updateTimer(_:)), userInfo: nil, repeats: true)
        
        }
        else if self.timer != nil {
             self.nextButton.isEnabled = true
             self.beforeButton.isEnabled = true
             self.timer.invalidate()
             self.timer = nil
        }
        imageView.image = UIImage(named:self.images[self.index])
    }
    
    @IBAction func backward(_ sender: Any) {
        if self.timer == nil {
                self.index -= 1
                if self.index < 0{
                    self.index = images.count - 1
                }
                imageView.image = UIImage(named:self.images[self.index])
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController:SecondViewController = segue.destination as! SecondViewController
        secondViewController.image = imageView.image
    }
    @IBAction func gesture(_ sender: Any) {
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
      }
}
