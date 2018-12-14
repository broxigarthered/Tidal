//
//  Header.swift
//  Tidal
//
//  Created by Nikolay N. Dutskinov on 13/12/2018.
//  Copyright © 2018 Nikolay N. Dutskinov. All rights reserved.
//

import Foundation
import IGListKit

class Header: ListDiffable  {
  //Header(icon: #imageLiteral(resourceName: "tracks"), heading: "TRACKS")
  let icon: String
  let heading: String
  
  init(icon: String, heading: String){
    self.icon = icon
    self.heading = heading
  }
  
  
  // MARK: ListDiffable
  func diffIdentifier() -> NSObjectProtocol {
    <#code#>
  }
  
  func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
    <#code#>
  }
  
  
}
