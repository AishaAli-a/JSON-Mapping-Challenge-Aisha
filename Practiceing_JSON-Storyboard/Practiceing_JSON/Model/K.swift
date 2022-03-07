//
//  K.swift
//  Practiceing_JSON
//
//  Created by Aisha Ali on 3/6/22.
//

import Foundation
import UIKit


class K {
  
  class Identifiers {
     let DetailVC = "DetailViewController"
     let SenatorsTable = "SenatorsTable"
     let InfoCell = "InfoCell"
  }
  
  class Methods {
    
    func decoderJSON(resource: String, fileExtension: String){
      let fileLocation = Bundle.main.url(forResource: resource, withExtension: fileExtension)
      
      do {
        let bundle = try Data(contentsOf: fileLocation!)
        let decoder = JSONDecoder()
        let decodeData = try decoder.decode([Senators].self, from: bundle)
        senators = decodeData
      }catch{
        print(error)
      }
    }
  }
}
var senators = [Senators]()
extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}


