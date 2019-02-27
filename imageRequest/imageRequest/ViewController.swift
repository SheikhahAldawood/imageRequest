//
//  ViewController.swift
//  imageRequest
//
//  Created by sh da on 06/01/2019.
//  Copyright © 2019 sh da. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBOutlet weak var imageView: UIImageView!
    @IBAction func buttonAction(_ sender: Any) {
        
        let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg")!
        let task = URLSession.shared.dataTask(with: imageURL) {(data, response, error) in
            if error == nil {
                let downloadedImage = UIImage(data: data!)
                DispatchQueue.main.async {
                    self.imageView.image = downloadedImage
                }
            }
            
        }
        task.resume()
    }
}

