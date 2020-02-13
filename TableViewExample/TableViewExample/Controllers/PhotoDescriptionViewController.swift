//
//  PhotoDescriptionViewController.swift
//  TableViewExample
//
//  Created by Gor Yeghoyan on 2/13/20.
//  Copyright © 2020 Gor Yeghoyan. All rights reserved.
//

import UIKit

class PhotoDescriptionViewController: UIViewController {
   
    
    var news: CellModel?
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var headline: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = news?.image
        label.text = news?.description
        headline.text = news?.headline
        
    }
    
    
    
    
}
