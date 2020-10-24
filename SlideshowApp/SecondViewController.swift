//
//  SecondViewController.swift
//  SlideshowApp
//
//  Created by plazima on 2020/10/24.
//  Copyright © 2020 takumi.hatae. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var imageViewFull: UIImageView!
    var image : UIImage?
    
    
    @IBOutlet weak var return_main: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewFull.image = image
        // Do any additional setup after loading the view.
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
