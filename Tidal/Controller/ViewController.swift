//
//  ViewController.swift
//  Tidal
//
//  Created by Nikolay N. Dutskinov on 13/12/2018.
//  Copyright © 2018 Nikolay N. Dutskinov. All rights reserved.
//

import UIKit
import IGListKit

class ViewController: UIViewController, ListAdapterDataSource {
 
  
  @IBOutlet var collectionView: UICollectionView!
  
  var data:[Any] = []
  
  lazy var adapter: ListAdapter = {
    return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    setupHeader()
    adapter.collectionView = collectionView
    adapter.dataSource = self
  }
  
  
  //MARK: ListAdapterDataSource
  
  func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
    return data as! [ListDiffable]
  }
  
  func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
    return AlbumPreviewSectionController()
  }
  
  func emptyView(for listAdapter: ListAdapter) -> UIView? {
    return nil
  }
  
  
  //MARK: Private

  func setupHeader(){
    let bounds = navigationController?.navigationBar.bounds
    let headerLabel = UILabel(frame: CGRect(x: 0, y: 0, width: bounds!.width, height: bounds!.height))
    headerLabel.text = "What's New"
    headerLabel.textColor = .black
    headerLabel.font = headerLabel.font.withSize(20)
    navigationItem.titleView = headerLabel
  }

}

