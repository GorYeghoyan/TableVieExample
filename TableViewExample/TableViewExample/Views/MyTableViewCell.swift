//
//  MyTableViewCell.swift
//  TableViewExample
//
//  Created by Gor Yeghoyan on 12/1/19.
//  Copyright © 2019 Gor Yeghoyan. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cellHeadline: UILabel!
    
    @IBOutlet weak var cellImage: UIImageView!
    
    @IBOutlet weak var cellDescription: UILabel!
    
    
    var model : CellModel? {
        didSet {
            cellImage?.image = model?.image
            cellHeadline?.text = model?.headline
            cellDescription?.text = model?.description
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       // configureCell()
       
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        model = nil
    }
    
//    func configureCell() {
//        cellImage?.image = model?.image
//        cellHeadline?.text = model?.headline
//        cellDescription?.text = model?.description
//    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
}
