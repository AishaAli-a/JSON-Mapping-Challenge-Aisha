//
//  ViewController.swift
//  Practiceing_JSON
//
//  Created by Aisha Ali on 2/19/22.
//

import UIKit

class DetailViewController: UIViewController {
  
  @IBOutlet weak var name: UILabel!
  
  @IBOutlet weak var birth: UILabel!
  
  @IBOutlet weak var address: UILabel!
  
  @IBOutlet weak var gender: UILabel!
  
  @IBOutlet weak var website: UILabel!
  
  @IBOutlet weak var phone: UILabel!
  
  
  var name1 = ""
  var birth1 = ""
  var address1 = ""
  var gender1 = ""
  var  website1 = ""
  var phone1 = ""
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    name.text = name1
    birth.text = birth1
    address.text = address1
    gender.text = gender1
    website.text = website1
    phone.text = phone1
  }
  
  @IBAction func backbutton(_ sender: UIButton) {
    let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: K.Identifiers().SenatorsTable) as! SenatorsTable
    detailViewController.modalPresentationStyle = .fullScreen
    self.present(detailViewController, animated: false, completion: nil)
    
  }
}

