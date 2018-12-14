//
//  AlbumPreviews.swift
//  Tidal
//
//  Created by Nikolay N. Dutskinov on 13/12/2018.
//  Copyright © 2018 Nikolay N. Dutskinov. All rights reserved.
//

import Foundation
import IGListKit


class AlbumPreviews: ListDiffable {
  
  let albumID: Int
  let albumImage: String
  
  init(albumID: Int, albumImage: String) {
    self.albumID = albumID
    self.albumImage = albumImage
  }
  
  
  // MARK: ListDiffable
  func diffIdentifier() -> NSObjectProtocol {
    return albumID as NSObjectProtocol
  }
  
  func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
    guard self !== object else {
      return true
    }
    guard let object = object as? AlbumPreviews else {
      return false
    }
    
    return albumID == object.albumID
  }
  
  
}
