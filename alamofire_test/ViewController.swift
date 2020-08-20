//
//  ViewController.swift
//  alamofire_test
//
//  Created by Ali Matsumoto on 8/19/20.
//  Copyright © 2020 Ali Matsumoto. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var photoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        AF.request("http://127.0.0.1:5000/hello").response { response in
            debugPrint(response)
        }
        
        AF.request("http://127.0.0.1:5000/image").responseImage { response in
            //debugPrint(response)
            //debugPrint(response.result)

            if case .success(let image) = response.result {
                print("image downloaded: \(image)")
                self.photoView.image = image
            }
        }
        
        
        
    }
}

