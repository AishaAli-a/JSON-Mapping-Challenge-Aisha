//
//  InfoCell.swift
//  Practiceing_JSON
//
//  Created by Aisha Ali on 2/20/22.
//

import Foundation
import UIKit




class InfoCell:UITableViewCell{
  
  
  @IBOutlet weak var senatorPhoto: UIImageView!
  
  @IBOutlet weak var name: UILabel!
  
  @IBOutlet weak var party: UILabel!
  
  @IBOutlet weak var desc: UILabel!
  
  
  override func awakeFromNib() {
      super.awakeFromNib()
    senatorPhoto.layer.borderWidth = 5
    senatorPhoto.layer.borderColor = UIColor.lightGray.cgColor
    senatorPhoto.layer.cornerRadius = senatorPhoto.frame.size.height/2
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
      super.setSelected(selected, animated: animated)

      // Configure the view for the selected state
  }
}

