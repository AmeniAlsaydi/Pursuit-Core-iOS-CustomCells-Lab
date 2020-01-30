//
//  UserView.swift
//  ProgrammaticUserCells
//
//  Created by Amy Alsaydi on 1/30/20.
//  Copyright © 2020 Benjamin Stone. All rights reserved.
//

import UIKit

class UserView: UIView {

      public lazy var collectionView: UICollectionView = {
          // lazy, we want to instantiate it when its called

          let layout = UICollectionViewFlowLayout()
          layout.scrollDirection = .vertical
          layout.itemSize = CGSize(width: 400, height: 400)
          let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout) // like creating an empty variable
          cv.backgroundColor = .systemGray
          
          return cv
          
      }()
      
    override init(frame: CGRect) {
      super.init(frame: UIScreen.main.bounds)
      commonInit()
    }
    
    required init?(coder: NSCoder) {
      super.init(coder: coder)
      commonInit()
    }
    
    private func commonInit() {
     setupcollectionviewConstraints()
    }
    
    private func setupcollectionviewConstraints() {
        addSubview(collectionView)
                
        collectionView.translatesAutoresizingMaskIntoConstraints = false // automatically happens in story board
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
                                             
        ])
    }

}
