//
//  ImageDetailViewController.swift
//  CollectionImage
//
//  Created by Adepoju Oluyinka on 2022-03-11.
//

import UIKit

class ImageDetailViewController: UIViewController {
    var city: City?
    
    @IBOutlet var cityImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        cityImageView.image = UIImage(named: city?.image ?? "")
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
