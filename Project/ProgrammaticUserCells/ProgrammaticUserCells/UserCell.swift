//
//  UserCell.swift
//  ProgrammaticUserCells
//
//  Created by Amy Alsaydi on 1/30/20.
//  Copyright © 2020 Benjamin Stone. All rights reserved.
//

import UIKit
import ImageKit

class UserCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    override func layoutSubviews() {
        userImage.contentMode = .scaleAspectFill
        userImage.layer.cornerRadius = userImage.frame.width/10
    }
    
    
    // configure
    
    func configureCell(user: User) {
        let fullName = "\(user.name.first) \(user.name.last)"
        nameLabel.text = fullName
        
        userImage.getImage(with: user.picture.large) { [weak self] (result) in
            switch result {
            case .failure(let error):
                print("image error: \(error)")
            case .success(let image):
                DispatchQueue.main.async {
                    self?.userImage.image = image
                }
            }
        }
        
        
        
    }
    
    
}
