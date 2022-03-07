//
//  SenatorsTable.swift
//  Practiceing_JSON
//
//  Created by Aisha Ali on 2/20/22.
//

import UIKit

class SenatorsTable: UITableViewController {
    
  override func viewDidLoad() {
    super.viewDidLoad()
    
    K.Methods().decoderJSON(resource: "Senators", fileExtension: "json")

  }
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return senators.count
  }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: K.Identifiers().InfoCell, for: indexPath) as! InfoCell
    cell.name.text = senators[indexPath.row].name
    cell.desc.text = senators[indexPath.row].bioguide
    cell.party.text = senators[indexPath.row].party.capitalizingFirstLetter()
    
    DispatchQueue.global().async{
      let data = try? Data(contentsOf: URL(string: senators[indexPath.row].photo_url)!)
      
      if let data = data, let image = UIImage(data: data) {
        DispatchQueue.main.async {
          cell.senatorPhoto?.image = image
          cell.senatorPhoto?.contentMode = .scaleToFill
          
        }
      }
    }
    return cell
  }
  
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: K.Identifiers().DetailVC) as! DetailViewController
    detailViewController.name1 = senators[indexPath.row].name
    detailViewController.gender1 = senators[indexPath.row].gender
    detailViewController.birth1 = senators[indexPath.row].date_of_birth
    detailViewController.address1 = senators[indexPath.row].address_complete
    detailViewController.phone1 = senators[indexPath.row].phone
    detailViewController.website1 = senators[indexPath.row].website
    self.present(detailViewController, animated: false, completion: nil)
      
  }
  
}


